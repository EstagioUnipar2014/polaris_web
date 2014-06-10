class CreateCicloDieta < ActiveRecord::Migration
  def change
    create_table :ciclo_dieta do |t|
      t.references :dieta, index: true
      t.references :ciclo, index: true

      t.timestamps
    end
  end
end
