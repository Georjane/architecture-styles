class Article < ApplicationRecord
  belongs_to :user
  belongs_to :section
  has_many :votes, dependent: :destroy
end
