class CommentsController < ApplicationController

  def index
    if params[:task_id]
      @task = Task.find(params[:task_id])
      @comments = @task.comments
      render json: @comments, status: 200
    else
      @comments = Comment.all
      render json: @comments, status: :ok
    end
  end

  def create
    @task = Task.find(params[:task_id])
    @comment = Comment.new(comment_params)
    @task.comments << @task
    if @comment.save
      render json: @comment, status: :created
    else
      render json: comment.errors,
      status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  def task_params
    params.require(:task).permit(:body)
  end
end

