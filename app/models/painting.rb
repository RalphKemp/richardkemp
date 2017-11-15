class Painting < ApplicationRecord
  belongs_to :album
  validates :name, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
