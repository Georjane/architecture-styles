require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user) { User.create(name: 'Jane') }
  let(:section) { user.sections.build(name: 'Section 1', priority: 1) }
  let(:article) do
    user.articles.build(title: 'Article 1', body: 'This is the body of my article',
                        section_id: section.id)
  end
  describe 'validation test' do
    it 'should include the :body attribute' do
      expect(article.attributes).to include('body')
    end
    it 'is valid if length is greater than 20 characters' do
      article.valid?
      expect(article.errors[:content]).to_not include('is too short (minimum is 20 characters)')
    end
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_most(50) }
    it { should_not validate_length_of(:body).is_at_least(10) }
  end

  describe 'association test' do
    it { should have_and_belong_to_many(:sections) }
    it { should have_many(:votes) }
  end
end
