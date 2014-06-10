class CreateTipoVacinas < ActiveRecord::Migration
  def change
    create_table :tipo_vacinas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
