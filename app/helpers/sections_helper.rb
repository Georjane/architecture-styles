module SectionsHelper
  def display_row1_elements(articles)
    count = 1
    results = []
    articles.each do |article|
      results << article if count < 3
      count += 1
    end
    results
  end

  def display_row2_elements(articles)
    count = 1
    results = []
    articles.each do |article|
      results << article if count >= 3 && count < 5
      count += 1
    end
    results
  end
  
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
                  
