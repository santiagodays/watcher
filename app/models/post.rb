class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :image_slug, ContentUploader

  def image_url(image_slug)
    if File.exist?("public/uploads/post/image_slug/#{self.id}/#{image_slug}")
      return "/uploads/post/image_slug/#{self.id}/#{image_slug}"
    else
      return ""
    end
  end
end
