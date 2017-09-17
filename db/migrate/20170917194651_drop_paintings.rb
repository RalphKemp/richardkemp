class DropPaintings < ActiveRecord::Migration[5.1]
  def change
    drop_table :paintings do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.timestamps null: false
  end
end
end





