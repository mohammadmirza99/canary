class SelectionsController < ApplicationController

  def index

    # @selections = Selection.all
    @category = params[:categories]
    @interest = params[:interest]

    if (@category || @interest)
      @activities = Activity.joins(:pairs).where(pairs:{category_id: @category}, interest: @interest)

      # current_user.selections.destroy_all
      # @activites.each do |activity|
      #   # unless user.selections.find { |selection| selection.activity_id == activity.id }
      #     Selection.create(
      #       activity_id: activity.id,
      #       user_id: current_user.id,

      #     )
        # end

    #   end
    # else
    #  @activities = Activity.all
    end
    # if (params[:selection] && activities = Activity.where(activity_id: params[:selection]))
    #   activities = activities
    #   @selection = Selection.where(id: params[:selection])
    # else
    #   @activities = Activity.all
    # end


  end

  def create
  end

end
