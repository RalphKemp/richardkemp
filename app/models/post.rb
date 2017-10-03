class Post < ApplicationRecord
  belongs_to :categories
  validates :title, :content, :category_id, presence: true;
  has_attachments :photos, maximum: 100
end
