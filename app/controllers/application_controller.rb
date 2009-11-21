# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Authentication
  helper :all # include all helpers, all the time
  helper_method :current_user_name, :current_user
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  filter_parameter_logging :password, :password_confirmation
 
  private

  def current_user
    return User.find(session[:user_id]) if session[:user_id]
  end

  def current_user_name
    return User.find(session[:user_id]).username if session[:user_id]
  end

  def require_user
    unless current_user
      flash[:notice] = "You must Log-in to view this page."
      redirect_to login_path
      return false
    end
  end

  def require_no_user
    if current_user
      flash[:notice] = "You must Log-out to view this page."
      redirect_to root_url
      return false
    end
  end

  def require_admin_user
    unless current_user.is_admin?
      flash[:notice] = "You must be an admin to view this page"
      redirect_to root_url
      return false
    end
  end
end
