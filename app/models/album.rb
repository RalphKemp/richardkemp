class Album < ApplicationRecord
  has_attachments :photos, maximum: 5
  validates :name, presence: true
end
