class CreatePrezzos < ActiveRecord::Migration[5.1]
  def change
    create_table :prezzos do |t|
      t.date :data
      t.integer :id_prodotto
      t.float :prezzo_fattura
      t.float :sconto

      t.timestamps
    end
  end
end
