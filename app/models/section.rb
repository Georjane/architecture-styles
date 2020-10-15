class Section < ApplicationRecord
  has_many :articles
  validates :name, presence: true, length: { maximum: 15 }
end
