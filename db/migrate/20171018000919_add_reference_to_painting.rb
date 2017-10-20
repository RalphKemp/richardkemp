class AddReferenceToPainting < ActiveRecord::Migration[5.1]
  def change
    add_reference :paintings, :album, foreign_key: true
  end
end
