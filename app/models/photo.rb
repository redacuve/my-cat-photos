class Photo < ApplicationRecord
  validates_presence_of :title, :description, :image
end
