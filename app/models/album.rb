class Album < ApplicationRecord
  has_many :paintings, dependent: :destroy
  validates :photos, presence: true
  validates :name, presence: true
end
