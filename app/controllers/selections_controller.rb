DAYS = [
  ["Monday", "Morning"],
  ["Tuesday", "Morning"],
  ["Wednesday", "Morning"],
  ["Thursday", "Morning"],
  ["Friday", "Morning"],
  ["Saturday", "Morning"],
  ["Sunday", "Morning"],
  ["Monday", "Afternoon"],
  ["Tuesday", "Afternoon"],
  ["Wednesday", "Afternoon"],
  ["Thursday", "Afternoon"],
  ["Friday", "Afternoon"],
  ["Saturday", "Afternoon"],
  ["Sunday", "Afternoon"],
  ["Monday", "Evening"],
  ["Tuesday", "Evening"],
  ["Wednesday", "Evening"],
  ["Thursday", "Evening"],
  ["Friday", "Evening"],
  ["Saturday", "Evening"],
  ["Sunday", "Evening"]
]

# create array to find month and day

MONTH_LIST = ["Jan", "Febr", "March", "Apr", "May", "Jun",
    "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"];


class SelectionsController < ApplicationController

  def index

    # For map
    @selections = Selection.all

    @itinerary = Itinerary.find(@selections.first.itinerary.id)

    start_time = Time.now
    @monday_selection = @selections.select { |s| s.date == "Monday" && s.time_of_day == "Morning" }
    @tuesday_selection = @selections.select { |s| s.date == "Tuesday" && s.time_of_day == "Morning" }
    @wednesday_selection = @selections.select { |s| s.date == "Wednesday" && s.time_of_day == "Morning" }
    @thursday_selection = @selections.select { |s| s.date == "Thursday" && s.time_of_day == "Morning" }
    @friday_selection = @selections.select { |s| s.date == "Friday" && s.time_of_day == "Morning" }
    @saturday_selection = @selections.select { |s| s.date == "Saturday" && s.time_of_day == "Morning" }
    @sunday_selection = @selections.select { |s| s.date == "Sunday" && s.time_of_day == "Morning" }
    end_time = Time.now
    duration = end_time - start_time
    p 'duration selection query: ', duration

    start_time = Time.now
    generate_map
    end_time = Time.now
    duration = end_time - start_time
    p 'duration for map render: ', duration
  end

  def create

    @interests = current_user.interests
    @selections = Selection.all
    @itinerary = Itinerary.find(params[:itinerary])

    @activities = current_user.activities
    @new_act = Activity.where.not(id: @activities).where(interest:@interests).sample

    new_selection = Selection.create!(
      activity: @new_act,
      user: current_user,
      time_of_day: params[:time_of_day],
      date: params[:day],
      itinerary: @itinerary
      )

    redirect_to selections_path
  end


  def update

    old_selection = Selection.find_by(safe_params)
    @selection = Selection.find(params[:id])

    if old_selection
      old_selection.update(date: @selection.date, time_of_day: @selection.time_of_day)
    end
    @selection.update(safe_params)
  end

  def random

    @interests = current_user.interests
    @activities = current_user.activities
    @itinerary = Itinerary.find(params[:itinerary])
    @time_of_day = params[:time_of_day]
    @day = params[:day]

    # Finds an activity that matches interests but is not selected yet.
    @new_act = Activity.where.not(id: @activities).where(interest:@interests).sample

    # Deletes current selection
    @selection = Selection.find(params[:selection])
    @selection.destroy

    # Creates new selection based on params time_of_day and day

    @new_selection = Selection.create!(
      activity: @new_act,
      user: current_user,
      time_of_day: params[:time_of_day],
      date: params[:day],
      itinerary: @itinerary
      )
    @marker = {
        lat: @new_act.latitude,
        lng: @new_act.longitude,
        image_url: helpers.asset_url('canary_map.png'),
        infoWindow: render_to_string(partial: "info_window", locals: { activity: @new_act })
      }
    # @window = render_to_string(partial: "info_window", locals: { activity: @new_act })

    respond_to do |format|
      format.html { render 'selections/index' }
      format.js
    end
  end


  def generate
    # create an itinerary
    @itinerary = Itinerary.new(start_date: params[:start_date], end_date: params[:end_date])
    @itinerary.save

    # grab the day date
    date_start = @itinerary.start_date.to_date
    # date_f = date_start.strftime('%d')
    #date end
    date_end = @itinerary.end_date.to_date
    # date_f = date_end.strftime('%d')

    # Submit on homepage directs to this method.
    # create a create a date range between these two dates
    range_date =((date_start)..(date_end)).map{|d| d.day}


    @category = params[:categories]
    @interests = params[:interest]

    # To save current_user's interests in order to be able to use in other methods.
    current_user.interests = params[:interest]
    current_user.save

    user_activities = []

    # Iterate over @interests array and find activities.
    @interests.each do |interest|
      user_activities << Activity.where(interest: interest).to_a
    end

    user_activities.flatten!

    Selection.where(user: current_user).destroy_all
    # Iterates through array of days
    DAYS.each_with_index do |day, index|
      # spa_made = false

      # Iterates through array of interests


      user_activities.each do |act|
        next if Selection.where(time_of_day: day[1], date: day[0], user: current_user).count > 0
        next if Selection.joins(:activity).where(date: day[0], user: current_user, activities: { interest: act.interest } ).length > 0

        # Iterates over each activity inside the interests
        # Checks to see if time of day of activity is == to T.O.D of array element.


        if act.time_of_day == day[1]
          Selection.create!(
            activity: act,
            user: current_user,
            time_of_day: day[1],
            date: day[0],
            # assign a day_date
            day_date: range_date[index % 7],
            # assign the itinerary to selection
            itinerary: @itinerary
          )
          user_activities.delete(act)
        end
      end
    end
  # Added sleep so that modal has enough time to show animation.
  sleep(2)
  redirect_to selections_path
end


  def destroy
    @itinerary = params[:itinerary]
    @day = params[:day]
    @counter = params[:counter]
    @selection = Selection.find(params[:id])

    @selection.destroy
    respond_to do |format|
      format.html { render 'selections/index' }
      format.js  # <-- idem
    end
  end

  def listview
    #Iterate in the view over the selection array.
    @selections = Selection.all
    @selection = @selections.first

    # month choose by the user
    num_month = @selection.itinerary.end_date[5] + @selection.itinerary.end_date[6]
    # finds the month in a array defined at the top of the file
    @month = MONTH_LIST[num_month.to_i - 1]
    day = @selection.itinerary.end_date.to_i - @selection.itinerary.start_date.to_i

    # For map
    @monday_selection = @selections.select { |s| s.date == "Monday" }
    @tuesday_selection = @selections.select { |s| s.date == "Tuesday" }
    @wednesday_selection = @selections.select { |s| s.date == "Wednesday" }
    @thursday_selection = @selections.select { |s| s.date == "Thursday" }
    @friday_selection = @selections.select { |s| s.date == "Friday" }
    @saturday_selection = @selections.select { |s| s.date == "Saturday" }
    @sunday_selection = @selections.select { |s| s.date == "Sunday" }
  end


  def pdfview

     #Iterate in the view over the selection array.
    @selections = Selection.all
    @selection = @selections.first
    @activities = Activity.all

    # month choose by the user
    num_month = @selection.itinerary.end_date[5] + @selection.itinerary.end_date[6]
    # finds the month in a array defined at the top of the file
    @month = MONTH_LIST[num_month.to_i - 1]
    day = @selection.itinerary.end_date.to_i - @selection.itinerary.start_date.to_i

    # For map
    @monday_selection = @selections.select { |s| s.date == "Monday" }
    @tuesday_selection = @selections.select { |s| s.date == "Tuesday" }
    @wednesday_selection = @selections.select { |s| s.date == "Wednesday" }
    @thursday_selection = @selections.select { |s| s.date == "Thursday" }
    @friday_selection = @selections.select { |s| s.date == "Friday" }
    @saturday_selection = @selections.select { |s| s.date == "Saturday" }
    @sunday_selection = @selections.select { |s| s.date == "Sunday" }

    # Code for PDF generator

      respond_to do |format|
        format.html
        format.pdf do
            render pdf: "Itinerary for: Italy",
            page_size: 'A4',
            template: "../views/selections/pdfview.html.erb",
            layout: "pdf.html"
            # orientation: "Landscape"
            # lowquality: true,
            # zoom: 1,
            # dpi: 75
        end
      end
  end

  private

  def safe_params
    params.permit(:time_of_day, :date, :counter, :day, :itinerary)

  end

  def generate_map
    @act = Activity.all
    @markers = []
    selections = Selection.all
    @act.each do |activity|

      # Sorting through activity to make sure it corresponds to current user.
      # if Selection.find_by(activity: activity, user: current_user)
      if selections.find { |s| s.activity == activity && s.user == current_user }

        marker = {
          lat: activity.latitude,
          lng: activity.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { activity: activity }),
          image_url: helpers.asset_url('canary_map.png')
        }

        @markers << marker
      end
    end
  end

  def style_line
    if @monday_selection.count == 2

    end
  end

end



# Discarded code might be used later
    # index
    # if (params[:selection] && activities = Activity.where(activity_id: params[:selection]))
    #   activities = activities
    #   @selection = Selection.where(id: params[:selection])
    # else
    #   @activities = Activity.all
    # end

    # create
    # @selection = Selection.new
    # @selection.activity = params[:activity]
    # @selection.user = current_user
    # @selection.time_of_day = params [:time_of_day]
    # @selection.date = params [:date]
    # @selection.save
    # redirect_to selections_path


    # generate
    # @activities = Activity.joins(:pairs).where(pairs:{category_id: @category}, interest: @interest)

    # @activites.each do |activity|
    # unless user.selections.find { |selection| selection.activity_id == activity.id }
    # Selection.create(
    # activity_id: activity.id,
    # user_id: current_user.id,
    # )
    # end
    # end
    # else
    # @activities = Activity.all
    # end
    # else
    # end
