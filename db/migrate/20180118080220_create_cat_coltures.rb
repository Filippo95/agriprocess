class CreateCatColtures < ActiveRecord::Migration[5.1]
  def change
    create_table :cat_coltures do |t|
      t.string :nome
      t.text :descrizione
      t.integer :id_parent

      t.timestamps
    end
  end
end
