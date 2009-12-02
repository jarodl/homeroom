class Admin::AdminController < ApplicationController
  before_filter :require_admin_user
  layout "admin"
  current_tab :overview

  def index
  end

end
