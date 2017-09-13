class CreatePaintings < ActiveRecord::Migration[5.1]
  def change
    create_table :paintings do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
