class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    @task_created = Task.create(task_params) unless params[:task][:title] == ''
    redirect_to tasks_path
  end

  def delete
    id = params[:id]
    @task_deleted = Task.delete(id)
    redirect_to tasks_path
  end

  def update
    id = params[:id]
    @task_update = Task.find(id)
  end

  def update_action
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
