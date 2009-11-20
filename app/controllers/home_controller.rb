class HomeController < ApplicationController
  before_filter :require_user
  current_tab :overview

  def index
  end

  def administrator?
    current_user.is_admin?
  end

end
