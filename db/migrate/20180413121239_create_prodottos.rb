class CreateProdottos < ActiveRecord::Migration[5.1]
  def change
    create_table :prodottos do |t|
      t.string :nome
      t.text :avversit
      t.integer :id_cat
      t.text :principio_attivo

      t.timestamps
    end
  end
end
