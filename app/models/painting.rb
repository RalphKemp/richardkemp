class Painting < ApplicationRecord
   mount_uploader :photo, PhotoUploader
   belongs_to: album
   validates :name, presence: true
end
