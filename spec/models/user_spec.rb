require 'rails_helper'

RSpec.describe User, type: :model do
    context 'validation test' do
        it { should validate_presence_of(:name) }
        it { should validate_length_of(:name).is_at_most(25) }
        it { should_not validate_length_of(:name).is_at_least(2) }
        it { should validate_uniqueness_of(:name).case_insensitive }
  end
end
