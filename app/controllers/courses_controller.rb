class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @grades = Student.find(session[:user_id]).grades
    session[:current_id] = @course.id
  end

  def administrator?
    current_user.is_admin?
  end

end
