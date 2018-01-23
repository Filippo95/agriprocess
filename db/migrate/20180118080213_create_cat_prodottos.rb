class CreateCatProdottos < ActiveRecord::Migration[5.1]
  def change
    create_table :cat_prodottos do |t|
      t.string :nome
      t.text :descrizione
      t.integer :id_prarent

      t.timestamps
    end
  end
end
