class Painting < ApplicationRecord
  has_attachment :photo
  validates :photo, presence: true
  validates :name, presence: true
end
