class Photo < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates_presence_of :title, :description, :image
end
