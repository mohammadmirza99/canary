class SelectionsController < ApplicationController

  def index
    @selections = Selection.all
    if (params[:selection] && activities = Activity.where(activity_id: params[:selection]))
      activities = activities
      @selection = Selection.where(id: params[:selection])
    else
      @activities = Activity.all
    end
  end

  def create
    # create a new selection
    # @selection = Selection.new
    # # find the category
    # @category = Category.where(name: params[:category])
    # # find all the pairs with category.id
    # @pairs = Pair.where(category_id: @category)
    # raise
    # redirect_to selections_path


    # @activity = Activity.where(interest: params[:interest])
    # # @selection.categories = @category
    # # assign an activity_id to @selection
    # @selection.activity_id = @activity
    # @selection.save
  end

  def selections_params

  end

end
