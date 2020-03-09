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

class SelectionsController < ApplicationController

  def index

    # For map
    generate_map

  end

  def create
    raise

    # Creates new selection based on params time_of_day and day
    new_selection = Selection.create!(
      activity: Activity.first,
      user: current_user,
      time_of_day: params[:time_of_day],
      date: params[:day]
      )
    raise

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


  def generate
    # Submit on homepage directs to this method.

    @category = params[:categories]
    @interests = params[:interest]


    user_activities = []

    @interests.each do |interest|
      user_activities << Activity.where(interest: interest).to_a
    end

    user_activities.flatten!

    Selection.where(user: current_user).destroy_all
    # Iterates through array of days
    DAYS.each do |day|
      # Iterates through array of interests
      user_activities.each do |act|
        next if Selection.where(time_of_day: day[1], date: day[0], user: current_user).count > 0
        # Iterates over each activity inside the interests
          # Checks to see if time of day of activity is == to T.O.D of array element.
          if act.time_of_day == day[1]
            Selection.create!(
              activity: act,
              user: current_user,
              time_of_day: day[1],
              date: day[0]
              )
            user_activities.delete(act)
          end
      end
    end


  redirect_to listview_path

end

  #    raise

  #   if (@category || @interest)
  #     Selection.where(user: current_user).destroy_all
  #     DAYS.each do |time|
  #       Selection.create!(
  #         activity: Activity.first,
  #         user: current_user,
  #         time_of_day: time[1],
  #         date: time[0]
  #       )
  #     end
  #   redirect_to listview_path
  #   end
  # end

  def destroy
    @selection = Selection.find(params[:id])
    @selection.destroy
    redirect_to selections_path
  end

  def listview

    #Iterate in the view over the selection array.

    @selections = Selection.all
    # For map
    @monday_selection = @selections.where(date: "Monday")
    @tuesday_selection = @selections.where(date: "Tuesday")
    @wednesday_selection = @selections.where(date: "Wednesday")
    @thursday_selection = @selections.where(date: "Thursday")
    @friday_selection = @selections.where(date: "Friday")
    @saturday_selection = @selections.where(date: "Saturday")
    @sunday_selection = @selections.where(date: "Sunday")
    generate_map

  end

  private

  def safe_params
    params.permit(:time_of_day, :date)
  end

  def generate_map
    @act = Activity.geocoded
    @markers = []
    @act.each do |activity|

      # Sorting through activity to make sure it corresponds to current user.
      if Selection.find_by(activity: activity, user: current_user)
        marker = {
          lat: activity.latitude,
          lng: activity.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { activity: activity }),
        }

        @markers << marker
      end
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
