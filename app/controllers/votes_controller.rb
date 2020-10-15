class VotesController < ApplicationController
  before_action :find_article
  before_action :find_vote, only: [:destroy]
  
  def create
    # @vote = current_user.votes.new(article_id: params[:article_id])

    # if @vote.save
    #   redirect_to articles_path, notice: 'You voted article.'
    # else
    #   redirect_to articles_path, alert: 'You cannot vote this article.'
    # end
    
    
      if already_voted?
        flash[:notice] = "You can't vote more than once"
      else
        @vote = current_user.votes.create(article_id: params[:article_id])
      end
      redirect_to articles_path, notice: 'You voted article.'
  end

  def destroy
    # vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    # if vote
    #   vote.destroy
    #   redirect_to articles_path, notice: 'You unvoted an article.'
    # else
    #   redirect_to articles_path, alert: 'You cannot unvote article that you did not vote before.'
    # end
    
    
      if !(already_voted?)
        flash[:notice] = "Cannot unlike"
      else
        @vote.destroy
      end
      redirect_to articles_path, notice: 'You unvoted an article.'
  end
  
   private
  def find_article
    @article = Article.find(params[:article_id])
  end
  
  def already_voted?
    Vote.where(user_id: current_user.id, article_id: params[:article_id]).exists?
  end
  
  def find_vote
     @vote = @article.votes.find(params[:id])
  end
end
