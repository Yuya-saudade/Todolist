class ApplicationController < ActionController::Base
  before_action :current_user_set
  before_action :authenticate_user, {only: [:index, :show, :edit, :update]}

  def current_user_set
    current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/")
    end
  end
end
