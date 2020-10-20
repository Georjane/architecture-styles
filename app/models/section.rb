class Section < ApplicationRecord
  has_many :articles
  validates :name, presence: true, length: { maximum: 15 }
  validates :priority, presence: true
  scope :ordered_by_priority, -> { order(priority: :asc) }
end
