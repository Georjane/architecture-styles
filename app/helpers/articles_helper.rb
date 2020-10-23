module ArticlesHelper
  def vote_btn(article)
    btn = ''
    pre_vote = article.votes.find { |vote| vote.user_id == current_user.id}
    if pre_vote
      btn << (button_to 'Unvote', article_vote_path(article, article.votes.find { |vote| vote.user_id == current_user.id}), method: :delete)
    else
      btn << (button_to 'vote', article_votes_path(article), method: :post)
    end
    btn.html_safe
    
  end
end