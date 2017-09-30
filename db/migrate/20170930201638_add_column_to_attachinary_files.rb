class AddColumnToAttachinaryFiles < ActiveRecord::Migration[5.1]
  def change
    add_column :attachinary_files, :Photo_name, :string
  end
end
