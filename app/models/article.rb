class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6, maximum: 50 }
  validates :body, presence: true, length: { minimum: 20 }
  validates :image, presence: true

  belongs_to :user
  has_many :votes, dependent: :destroy
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
  has_and_belongs_to_many :sections

  has_attached_file :image
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']
end
