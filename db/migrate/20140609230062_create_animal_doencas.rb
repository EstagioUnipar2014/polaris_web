class CreateAnimalDoencas < ActiveRecord::Migration
  def change
    create_table :animal_doencas do |t|
      t.date :data_inicio
      t.date :data_fim
      t.references :doenca, index: true
      t.references :animal, index: true

      t.timestamps
    end
  end
end
