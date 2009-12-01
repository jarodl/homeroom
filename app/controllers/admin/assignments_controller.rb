class Admin::AssignmentsController < ApplicationController
  before_filter :require_admin_user
  layout "admin"
  current_tab :assignments

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(params[:assignment])
    if @assignment.save
      flash[:notice] = "Assignment was successfully created."
      redirect_to admin_assignments_path
    else
      render :action => 'new'
    end
  end

  def index
    @assignments = Assignment.all
  end

end
