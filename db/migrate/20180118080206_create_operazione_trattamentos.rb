class CreateOperazioneTrattamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :operazione_trattamentos do |t|
      t.integer :id_operazione
      t.integer :id_trattamento

      t.timestamps
    end
  end
end
