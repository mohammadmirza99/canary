class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @categories = Category.all
    @activities = Activity.all
  end
end
