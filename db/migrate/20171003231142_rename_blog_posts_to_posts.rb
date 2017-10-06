class RenameBlogPostsToPosts < ActiveRecord::Migration[5.1]
  def change
    rename_table :blog_posts, :posts
  end
end
