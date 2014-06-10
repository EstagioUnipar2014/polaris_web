class CreateTipoExames < ActiveRecord::Migration
  def change
    create_table :tipo_exames do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
