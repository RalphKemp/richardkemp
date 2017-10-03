class Album < ApplicationRecord
  has_attachments :photos, maximum: 100
  validates :photos, presence: true
  validates :name, presence: true
end
