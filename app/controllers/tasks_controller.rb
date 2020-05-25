class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.find_by(id: params[:id])
  end

  def create
    @task = Task.create(content: params[:content],memo: params[:memo],project: "inbox")
    new-task = @task
  end

  def edit
    @task = Task.find_by(id: params[:id])
    @task.content = params[:content]
    @task.save
  end
end
