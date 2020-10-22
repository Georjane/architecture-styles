require 'rails_helper'

RSpec.describe Section, type: :model do
  describe 'validation test' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:priority) }
  end
  describe 'association test' do
    it { should have_many(:articles) }
  end  
end
