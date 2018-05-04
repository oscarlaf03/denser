class Product < ApplicationRecord
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos
  mount_uploader :main_photo, PhotoUploader
  mount_uploader :banner, PhotoUploader
  validates :banner, :main_photo, presence: true


end
