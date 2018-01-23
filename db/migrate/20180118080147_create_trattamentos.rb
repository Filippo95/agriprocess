class CreateTrattamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :trattamentos do |t|
      t.date :data
      t.integer :id_coltura
      t.integer :id_attrezzo
      t.text :avversit
      t.boolean :semina
      t.boolean :trapianto
      t.boolean :fioritura
      t.boolean :raccolta

      t.timestamps
    end
  end
end
