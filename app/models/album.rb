class Album < ApplicationRecord
  # has_many :paintings, dependent: :destroy
  has_attachments :photos, maximum: 20
  validates :name, presence: true
end
