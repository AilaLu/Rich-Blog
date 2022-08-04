class BlogsController < ApplicationController
  before_action :require_login, only:[:new]
  # include UsersHelper
  def index
    @articles = Article.all.order(id: :desc) #最新的文章在最上面
  end
  def new
    if user_signed_in?
    @article = Article.new
    else
      redirect_to sign_up_users_path
    end
  end
  def show
  end
  def create 
    render html: params
  end
  def edit
  end
  def update
  end
  def destroy
  end
end