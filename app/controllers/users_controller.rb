class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:index, :show, :edit, :update, :logout]}
  before_action :forbid_login_user, {only: [:signup, :login]}

  def signup
    @user = User.new(name: params[:name],
                     email: params[:email],
                     password: params[:password],
                   )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/tasks/index")
    else
      @user.errors.full_messages.each do |message|
        flash[:notice] = message
      end
      redirect_to("/")
    end
  end

  def edit
    @user = User.find_by(name: params[:name])
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
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

  def edit
    @user = User.find_by(id: session[:user_id])
  end

  def update
    @user = User.find_by(id: session[:user_id])
    @user.name = params[:name]
    @user.email = params[:email]
    if @user.save
      flash[:notice] = "変更内容を保存しました"
      redirect_to("/tasks/index")
    else
      render("/tasks/index")
      @user.errors.full_messages.each do |message|
        flash[:notice] = message
      end
    end
  end
end
