class CoursesController < ApplicationController
  def show
    @course = Course.find(params[:id])
    @user = current_user
    @recommendations = Recommendation.all
    @recommendation = @recommendations.new
  end
end
