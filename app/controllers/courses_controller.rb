class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @coursephotos = CoursePhoto.all
    course_id = @course.id
    @coursephoto = @coursephotos.find(course_id)
    @user = current_user
    @recommendations = Recommendation.all
    @recommendation = @recommendations.new
  end
end
