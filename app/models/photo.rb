class Photo < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates_presence_of :title, :description, :image
  scope :recents, -> { order(created_at: :desc) }
  scope :most_liked, -> { order(votes: :desc)}
end
