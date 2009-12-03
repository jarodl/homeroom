class UsersController < ApplicationController
  before_filter :require_one_user
  layout "no_user"

  def new
    @user = Student.new
  end
  
  def create
    @user = Student.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

end
