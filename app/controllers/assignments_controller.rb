class AssignmentsController < ApplicationController

  def show
    @assignment = Assignment.find(params[:course_id])
    session[:current_id] = @assignment.course_id
  end

end
