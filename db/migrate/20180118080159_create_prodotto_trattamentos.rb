class CreateProdottoTrattamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :prodotto_trattamentos do |t|
      t.integer :id_prodotto
      t.integer :id_trattamento
      t.float :dose_ha
      t.text :avvesit

      t.timestamps
    end
  end
end
