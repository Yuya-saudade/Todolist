class TasksController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    @tasks = Task.all
    @task = Task.find_by(id: params[:id])
  end

  def create
    @user = User.find_by(id: params[:id])
    @task = Task.create(content: params[:content],memo: params[:memo],project: "inbox")
    flash[:notice] = "タスクを追加しました"
    redirect_to("/tasks/index")
  end

  def edit
    @task = Task.find_by(id: params[:id])
    @task.content = params[:content]
    @task.memo = params[:memo]
    @task.save
    redirect_to("/tasks/index")
  end

  def completed
    @task = Task.find_by(id: params[:id])
    @task.project = "completed"
    @task.save
  end
end
