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


    # if (params[:selection] && activities = Activity.where(activity_id: params[:selection]))
    #   activities = activities
    #   @selection = Selection.where(id: params[:selection])
    # else
    #   @activities = Activity.all
    # end


    # For maps
    @act = Activity.geocoded #returns flats with coordinates

    @markers = @act.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { activity: activity }),
      }
    end
  end

  def create
  end

  def generate

    @category = params[:categories]
    @interest = params[:interest]

    if (@category || @interest)
      # @activities = Activity.joins(:pairs).where(pairs:{category_id: @category}, interest: @interest)

      Selection.where(user: current_user).destroy_all

      # @activites.each do |activity|
        # unless user.selections.find { |selection| selection.activity_id == activity.id }
          # Selection.create(
          #   activity_id: activity.id,
          #   user_id: current_user.id,

          # )
        # end

      # end
      DAYS.each do |time|
        Selection.create!(
          activity: Activity.first,
          user: current_user,
          time_of_day: time[1],
          date: time[0]
        )
      end

    # else
     # @activities = Activity.all

        # end

    #   end
    # else
    #  @activities = Activity.all

    redirect_to selections_path

    end

  end

end
