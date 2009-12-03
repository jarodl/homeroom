class Admin::UsersController < ApplicationController
  before_filter :require_admin_user
  before_filter :require_one_user
  layout "admin"
  current_tab :users

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "User #{@user.username} successfully created."
      redirect_to admin_users_path
    else
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "User #{@user.username} successfully updated."
      redirect_to admin_user_path(@user)
    else
      render :action => 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "User #{@user.username} successfully deleted."
      redirect_to admin_users_path
    else
      flash[:notice] = "The last user can't be deleted."
      render :action => 'show'
    end
  end

end
