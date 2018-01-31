class CreateProdottosOperaziones < ActiveRecord::Migration[5.1]
  def change
    create_table :prodottos_operaziones do |t|
      t.integer :id_prodotto
      t.integer :id_operaziones

      t.timestamps
    end
  end
end
