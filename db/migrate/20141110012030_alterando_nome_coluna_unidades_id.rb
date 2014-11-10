class AlterandoNomeColunaUnidadesId < ActiveRecord::Migration
  def change
    rename_column :medidas, :unidades_id, :unidade_id
  end
end
