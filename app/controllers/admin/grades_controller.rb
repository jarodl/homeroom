class Admin::GradesController < ApplicationController
  before_filter :require_admin_user
  layout "admin"
  current_tab :grades
 
  def index
  end

  def new
  end

end
