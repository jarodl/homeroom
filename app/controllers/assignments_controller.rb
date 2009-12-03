class AssignmentsController < ApplicationController

  def show
    @assignment = Assignment.find(params[:course_id])
  end

end
