class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6, maximum: 25 }
  validates_uniqueness_of :name, case_sensitive: false
  has_many :articles, dependent: :destroy
  has_many :votes, dependent: :destroy
end
