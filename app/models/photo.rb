class Photo < ApplicationRecord
  belongs_to :product
  mount_uploader :image, PhotoUploader
  validates :product, presence: true
end
