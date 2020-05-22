class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.find_by(id: params[:id])
  end

  def create
    @task = Task.new(content: params[:content],memo: params[:memo])
    @task.save
    
  end
end
