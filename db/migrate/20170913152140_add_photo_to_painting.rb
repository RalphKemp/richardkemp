class AddPhotoToPainting < ActiveRecord::Migration[5.1]
  def change
    add_column :paintings, :photo, :string
  end
end
