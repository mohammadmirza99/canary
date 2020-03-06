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

    # Creates new selection based on params time_of_day and day
    new_selection = Selection.create!(
      activity: Activity.first,
      user: current_user,
      time_of_day: params[:time_of_day],
      date: params[:day]
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


  def generate
    # Submit on homepage directs to this method.
    @category = params[:categories]
    @interest = params[:interest]

    if (@category || @interest)
      Selection.where(user: current_user).destroy_all
      DAYS.each do |time|
        Selection.create!(
          activity: Activity.first,
          user: current_user,
          time_of_day: time[1],
          date: time[0]
        )
      end
    redirect_to selections_path
    end
  end

  def destroy
    @selection = Selection.find(params[:id])
    @selection.destroy
    redirect_to selections_path
  end

  def listview
    #Iterate in the view over the selection array.
    @selections = Selection.all
    # For map
    generate_map

  end

  private

  def safe_params
    params.permit(:time_of_day, :date)
  end

  def generate_map
    @act = Activity.geocoded
    @markers = @act.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: activity }),
      }
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
