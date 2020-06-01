class HomeController < ApplicationController
  def top
    if session[:user_id]
      flash[:notice] = "ログアウトしてください"
      redirect_to("/tasks/index")
    end
  end
end
