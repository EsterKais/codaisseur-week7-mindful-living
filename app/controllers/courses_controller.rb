class CoursesController < ApplicationController

  def index
    @courses = Course.all
    @courses = Course.search (params[:search]) unless params[:search].blank?
    @coursephotos = CoursePhoto.all
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

  def by_course_name
    @courses = Course.by_course_name
    @coursephotos = CoursePhoto.all
    render action: :index
  end

  def by_latest
    @courses = Course.by_latest
    @coursephotos = CoursePhoto.all    
    render action: :index
  end
end
