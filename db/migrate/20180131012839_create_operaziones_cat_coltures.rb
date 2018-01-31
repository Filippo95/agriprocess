class CreateOperazionesCatColtures < ActiveRecord::Migration[5.1]
  def change
    create_table :operaziones_cat_coltures do |t|
      t.integer :id_operazione
      t.integer :id_cat_coltures

      t.timestamps
    end
  end
end
