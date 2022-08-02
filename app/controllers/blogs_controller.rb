class BlogsController < ApplicationController
  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
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