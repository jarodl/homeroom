class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    session[:current_id] = @course.id
  end

  def administrator?
    current_user.is_admin?
  end

end
