class Album < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :paintings, dependent: :destroy
  validates :name, presence: true
end
