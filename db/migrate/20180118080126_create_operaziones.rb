class CreateOperaziones < ActiveRecord::Migration[5.1]
  def change
    create_table :operaziones do |t|
      t.string :nome
      t.text :descrizione
      t.float :per_ha

      t.timestamps
    end
  end
end
