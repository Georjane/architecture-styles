module ArticlesHelper
  def vote_btn(article)
    btn = ''
    pre_vote = article.votes.find { |vote| vote.user_id == current_user.id }
    btn << if pre_vote
             (button_to 'Unvote', article_vote_path(article, article.votes.find do |vote|
                                                               vote.user_id == current_user.id
                                                             end), method: :delete)
           else
             (button_to 'vote', article_votes_path(article), method: :post)
           end
    btn.html_safe
  end
end
