class Album < ApplicationRecord
  has_attachments :photos, maximum: 100
  validates :name, presence: true
end
