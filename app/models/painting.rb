class Painting < ApplicationRecord
  belongs_to :album
  has_attachment :photo
  validates :name, presence: true
end
