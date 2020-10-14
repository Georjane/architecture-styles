class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show create destroy]

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = 'article created!'
      redirect_to root_url
    else
      render 'user/show'
    end
  end

  def destroy; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:name)
  end
end
