class Album < ApplicationRecord
  has_many :paintings, dependent: :destroy
  accepts_nested_attributes_for :paintings
  validates :photos, presence: true
  validates :name, presence: true
end
