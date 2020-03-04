class SelectionsController < ApplicationController

  def index
    @selections = Selection.all
  end

  def create
    # create a new selection
    @selection = Selection.new
    # find an activity with the form in home#page
    @activity = Activity.where(interest: params[:interest])
    # find the category
    @category = Category.where(name: params[:category])
    # @selection.categories = @category
    # assign an activity_id to @selection
    @selection.activity_id = @activity
    @selection.save
    raise
  end

end
