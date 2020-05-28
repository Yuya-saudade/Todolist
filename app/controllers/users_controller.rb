class UsersController < ApplicationController
  def signup
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/tasks/index")
    else
      @user.errors_full_messages.each do|message|
        flash[:notice] = message
      end
      redirect_to("/")
    end
  end

  def edit
    @user = User.find_by(name: params[:name])
  end

  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/tasks/index")
    else
      flash[:notice] = "メールアドレスまたはパスワードが間違っています"
      redirect_to("/")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end
end
