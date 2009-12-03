class QuicklinksController < ApplicationController
  before_filter :require_user
  
  def new
    @user = User.find(session[:user_id])
    @quicklink = Quicklink.new
  end

  def create
    @quicklink = Quicklink.new(params[:quicklink])
    if @quicklink.save
      flash[:notice] = "The quicklink was added to your sidebar."
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def edit
    @quicklink = Quicklink.find(params[:id])
  end
  
  def update
    @quicklink = Quicklink.find(params[:id])
    if @quicklink.update_attributes
      flash[:notice] = "Updated quicklink successfully."
      redirect_to root_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @quicklink = Quicklink.find(params[:id])
    if @quicklink.destroy
      flash[:notice] = "The quicklink was removed from your sidebar."
      redirect_to root_path
    end
  end

end
