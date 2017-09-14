class RemovePhotoFromAlbums < ActiveRecord::Migration[5.1]
  def change
    remove_column :albums, :photo, :string
  end
end
