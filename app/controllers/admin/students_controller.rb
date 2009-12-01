class Admin::StudentsController < ApplicationController
  before_filter :require_admin_user
  layout "admin"
  current_tab :users

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      flash[:notice] = "Student #{@student.username} successfully created."
      redirect_to admin_users_path
    else
      render :action => 'new'
    end
  end

end
