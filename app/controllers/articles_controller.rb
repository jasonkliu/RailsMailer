class ArticlesController < ApplicationController
  def new
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def create
    # render plain: params[:article].inspect  # view the input to the form
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
