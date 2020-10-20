class Section < ApplicationRecord
  has_many :articles
  validates :name, presence: true
  validates :priority, presence: true
  scope :ordered_by_priority, -> { order(priority: :asc) }
end
