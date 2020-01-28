class TaskController < ApplicationController
  def tasks
    @tasks = Task.all
  end
end
