class ArticlesController < ApplicationController

  def index
    
  end
  def new
    
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to blogs_path, notice: "已新增"
    else
      render new_blog_path
      # render :new
    end
  end
  def show
    @article = Article.find(params[:id])
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to blogs_path, notice: "已編輯"
    else
      render edit_blog_path
      # render :edit
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.delete
    redirect_to blogs_path, notice: "已刪除"
  end
  
  
  
 
  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
