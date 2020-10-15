class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50 }
  has_many :votes, dependent: :destroy
  
end
