class Painting < ApplicationRecord
  belongs_to :album
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
end
