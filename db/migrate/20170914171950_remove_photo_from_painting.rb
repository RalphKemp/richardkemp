class RemovePhotoFromPainting < ActiveRecord::Migration[5.1]
  def change
    remove_column :paintings, :photo, :string
  end
end
