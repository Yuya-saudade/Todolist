class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.find_by(id: params[:id])
  end

  def create
    @task = Task.create(content: params[:content],memo: params[:memo],project: "inbox")
    redirect_to("/tasks/index")
  end

  def edit
    @task = Task.find_by(id: params[:id])
    @task.content = params[:content]
    @task.save
    redirect_to("/tasks/index")
  end

  def completed
    @task = Task.find_by(id: params[:id])
    @task.project = "completed"
    @task.save
  end
end
