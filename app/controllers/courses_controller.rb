class CoursesController < ApplicationController
  current_tab :courses

  def index
    @courses = Course.all
  end

  def show
  end

  def administrator?
    current_user.is_admin?
  end

end
