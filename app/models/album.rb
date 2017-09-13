class Album < ApplicationRecord
  has_many: paintings
  validates :name, presence: true
end
