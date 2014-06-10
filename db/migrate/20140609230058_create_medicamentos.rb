class CreateMedicamentos < ActiveRecord::Migration
  def change
    create_table :medicamentos do |t|
      t.string :nome
      t.references :tipo_medicamento, index: true

      t.timestamps
    end
  end
end
