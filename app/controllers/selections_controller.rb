class SelectionsController < ApplicationController

  def index

  end

  def create
    create a new selection
    @selection = Selection.new
    # find the category
    @category = Category.where(name: params[:category])
    # find all the pairs with category.id
    @pairs = Pair.where(category_id: @category)
    raise
    redirect_to selections_path


    @activity = Activity.where(interest: params[:interest])
    # @selection.categories = @category
    # assign an activity_id to @selection
    @selection.activity_id = @activity
    @selection.save
    raise
  end

end
