class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  helper_method :current_user, :user_signed_in? #直接寫在controller 或是用users_helper寫method, 再用include UsersHelper
  # private
  # def record_not_found
  #   render file: "#{Rails.root}/public/404.html"
  #   layout: false,
  #   status: 404
  # end
  def current_user
    @_user ||= User.find_by(id: session[:user_session])  #||= conditional assignment 會暫存value讓查找資料更快速 減少網路存數 ruby memorization
  end
  def user_signed_in?
    session[:user_session] && current_user
  end
  

  def require_login
    redirect_to sign_in_users_path if not user_signed_in?
  end
  
end
