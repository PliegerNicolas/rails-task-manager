class TasksController < ApplicationController
  before_action :set_task, only: %I[show edit update destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end

# def index
#    @tasks = Task.all
#  end

#  def show
#    id = params[:id]
#    @task = Task.find(id)
#  end

#  def new
#    @task = Task.new
#  end

#  def create
#    @task_created = Task.create(task_params) unless params[:task][:title] == ''
#    redirect_to tasks_path
#  end

#  def delete
#    id = params[:id]
#    @task_deleted = Task.delete(id)
#    redirect_to tasks_path
#  end

#  def edit
#    id = params[:id]
#    @task_edit = Task.find(id)
#  end

#  def update
#  end
