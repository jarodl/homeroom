class StudentsController < ApplicationController
  layout "no_user"

  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(params[:student])
    if @student.save
      session[:user_id] = @student.id
      flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

end
