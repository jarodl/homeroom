class CommentsController < ApplicationController
  def create
    @course = Assignment.find(params[:assignment_id])
    @comment = @course.comments.create!(params[:comment])
    @comment.user = User.find(session[:user_id])
    @comment.save
    respond_to do |format|
      format.html { redirect_to @course }
      format.js
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @assignment = @comment.assignment
    if @comment.destroy
      flash[:notice] = "Your comment was deleted."
      redirect_to course_assignment_path(@assignment)
    end
  end
end
