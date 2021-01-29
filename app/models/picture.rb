class Picture < ApplicationRecord
  belongs_to :user
  # THUMBNAIL_SIZE = [400, 200]
  mount_uploader :image, ImageUploader
end
