class Admin::CoursesController < ApplicationController
  before_filter :require_admin_user
  layout "admin"
  current_tab :courses

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    params[:course][:student_ids] ||= []

    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      flash[:notice] = "Updated #{@course.title}."
      redirect_to admin_course_path(@course)
    else
      render :action => 'edit'
    end
  end

  def new
    @course = Course.new
    @professors = Professor.all
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      flash[:notice] = "Created #{@course.title}."
      redirect_to admin_course_path(@course)
    else
      render :action => 'new'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    if @course.destroy
      flash[:notice] = "Deleted #{@course.title}."
      redirect_to admin_courses_path
    else
      render :action => 'show'
    end
  end

end
