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
end
