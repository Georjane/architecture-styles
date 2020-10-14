class Type < ApplicationRecord
  has_many :articles
  validates :name, presence: true, length: { maximum: 20 }
end
