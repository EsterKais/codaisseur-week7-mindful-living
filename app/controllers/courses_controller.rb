class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @user = current_user
    @recommendations = Recommendation.all
    @recommendation = @recommendations.new
  end
end
