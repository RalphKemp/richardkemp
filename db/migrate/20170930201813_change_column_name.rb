class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :attachinary_files, :Photo_name, :photo_name
  end
end
