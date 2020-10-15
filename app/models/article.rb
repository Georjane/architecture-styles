class Article < ApplicationRecord
  belongs_to :user
  belongs_to :section
  has_many :votes, dependent: :destroy
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }

  has_attached_file :image
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']
end
