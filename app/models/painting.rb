class Painting < ApplicationRecord
   belongs_to :album
   validates :name, presence: true
end