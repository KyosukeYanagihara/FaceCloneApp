class User < ApplicationRecord
  validates :name,  presence: true, length: { in: 1..30 }
  validates :email, presence: true, length: { in: 1..255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { in: 8..16 }
  validates :image, presence: true
  before_validation { email.downcase! }
  has_secure_password
  has_many :pictures
  # THUMBNAIL_SIZE = [100, 100]
  mount_uploader :image, ImageUploader
end
