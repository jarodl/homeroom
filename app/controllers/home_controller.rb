class HomeController < ApplicationController
  before_filter :require_user

  def index
    session[:current_id] = 'home'
    @courses = current_user.courses
  end

  def administrator?
    current_user.is_admin?
  end

end
