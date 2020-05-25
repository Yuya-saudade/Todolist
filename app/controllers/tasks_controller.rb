class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.find_by(id: params[:id])
  end

  def create
    @task = Task.create(content: params[:content],memo: params[:memo])
    redirect_to("/tasks/index")
  end

  def edit
    redirect_to("/tasks/index")
    @task = Task.find_by(id: params[:id])
    Task.content = params[:content]
    Task.save
  end
end
