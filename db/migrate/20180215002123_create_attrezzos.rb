class CreateAttrezzos < ActiveRecord::Migration[5.1]
  def change
    create_table :attrezzos do |t|
      t.string :nome
      t.text :descrizione
      t.float :costo_carburante
      t.float :deperimento
      t.float :consumo

      t.timestamps
    end
  end
end
