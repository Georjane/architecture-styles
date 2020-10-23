module UsersHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5.hexdigest(user.name.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: 'gravatar')
  end

  def highest_voted_article
    hash = {}
    Article.all.each do |article|
      hash[article] = article.votes.count
    end
    hash.key(hash.values.max)
  end
end
