class CreateAnimalDieta < ActiveRecord::Migration
  def change
    create_table :animal_dieta do |t|
      t.date :data_inicio
      t.date :data_fim
      t.references :dieta, index: true
      t.references :animal, index: true

      t.timestamps
    end
  end
end
