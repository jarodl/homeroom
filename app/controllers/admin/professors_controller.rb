class Admin::ProfessorsController < ApplicationController
  before_filter :require_admin_user
  layout "admin"
  current_tab :users

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.new(params[:professor])
    if @professor.save
      flash[:notice] = "Prof #{@professor.username} successfully created."
      redirect_to admin_users_path
    else
      render :action => 'new'
    end
  end

end
