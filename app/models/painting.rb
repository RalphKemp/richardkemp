class Painting < ApplicationRecord
  belongs_to :album
  belongs_to :post
  mount_uploader :photo, PhotoUploader
end
