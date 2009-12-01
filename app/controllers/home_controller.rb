class HomeController < ApplicationController
  before_filter :require_user
  current_tab :overview

  def index
    session[:current_id] = 'home'
  end

  def administrator?
    current_user.is_admin?
  end

end
