class ArticlesController < ApplicationController
  def index
    render '_index'
  end
  
  def show
    @article = Article.find(params[:id])
  end
end
