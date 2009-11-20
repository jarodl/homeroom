class CoursesController < ApplicationController
  current_tab :courses

  def index
  end

  def show
  end

  def administrator?
    require_admin_user
  end

end
