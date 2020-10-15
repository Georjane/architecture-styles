class Article < ApplicationRecord
  belongs_to :user
  belongs_to :section
  has_many :votes, dependent: :destroy
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
