require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation test' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(25) }
    it { should_not validate_length_of(:name).is_at_least(2) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
  describe 'association test' do
    it { should have_many(:articles) }
    it { should have_many(:votes) }
  end
  
  describe 'Authenticated Users Activities' do
     before do
       @user = User.create(name: 'User1')
     end
     
     it 'should be able to create a category' do
       @section = @user.sections.new(name: 'test section', priority: 1).save
       expect(@section).to eq(true)
     end
    end
end
