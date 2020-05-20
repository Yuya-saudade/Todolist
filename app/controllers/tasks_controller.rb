class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def new

  end

  def create
    @task = Task.new(content: params[:content])
    @task.save
    redirect_to("/tasks/index")
  end
end
