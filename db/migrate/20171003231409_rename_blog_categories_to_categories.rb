class RenameBlogCategoriesToCategories < ActiveRecord::Migration[5.1]
  def change
    rename_table :blog_categories, :categories
  end
end
