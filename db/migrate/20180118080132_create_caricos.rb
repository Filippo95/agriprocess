class CreateCaricos < ActiveRecord::Migration[5.1]
  def change
    create_table :caricos do |t|
      t.integer :id_prodotto
      t.float :quantit

      t.timestamps
    end
  end
end
