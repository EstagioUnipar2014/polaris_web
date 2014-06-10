class CreateTipoMedicamentos < ActiveRecord::Migration
  def change
    create_table :tipo_medicamentos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
