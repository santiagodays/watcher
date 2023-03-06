class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :image_slug, ContentUploader
end
