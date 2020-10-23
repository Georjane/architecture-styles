class Section < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6, maximum: 25 }
  validates :priority, presence: true
  
  has_and_belongs_to_many :articles
  belongs_to :user
  scope :ordered_by_priority, -> { order(priority: :asc) }
end
