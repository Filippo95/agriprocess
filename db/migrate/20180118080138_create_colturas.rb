class CreateColturas < ActiveRecord::Migration[5.1]
  def change
    create_table :colturas do |t|
      t.string :nome
      t.float :estensione_ha
      t.integer :id_cat

      t.timestamps
    end
  end
end
