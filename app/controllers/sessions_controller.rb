class SessionsController < ApplicationController

  def create
    user = User.login(params[:user])
    if user
      session[:user_session] = user.id
      redirect_to "/", notice: "登入成功"
    else
      redirect_to "users/sign_in", notice: "登入失敗"
    end
  end
  def destroy
    session[:user_session] = nil
    redirect_to root_path, notice: "已登出"
  end
  
end

