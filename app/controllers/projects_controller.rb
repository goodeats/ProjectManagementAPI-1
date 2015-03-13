class ProjectsController < ApplicationController

  def index
    if params[:group_id]
      @group = Group.find(params[:group_id])
      @projects = @group.projects
      render json: @projects, status: 200
    else
      @projects = Project.all
      render json: @projects, status: :ok
    end
  end

  def create
    @group = Group.find(params[:group_id])
    @project = Project.new(project_params)
    @group.projects << @group
    if @project.save
      render json: @project, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      render json: @project, status: :ok
    else
      render json: @project, status: :unprocessable_entity
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
  end

  private
  def project_params
    params.require(:project).permit(:id, :name, :description, :due_date, :privacy)
  end
end
