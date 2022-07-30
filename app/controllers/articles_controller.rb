class ArticlesController < ApplicationController
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to "/"
      
    else
      render "blogs/new"
    end
  end
 
  private
  def article_params
    params.require(:article).permit(:title, :comtent)
  end
end
