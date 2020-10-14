class Article < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  belongs_to :type
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 140 }
  validates :body, presence: true, length: { maximum: 500 }
end
