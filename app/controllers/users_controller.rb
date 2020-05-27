class UsersController < ApplicationController
  def signup
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    @user.save
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/tasks/index")
    else
      redirect_to("/")
      flash[:notice] = "ユーザー登録に失敗しました"
    end
  end

  def edit
    @user = User.find_by(name: params[:name])
  end
end
