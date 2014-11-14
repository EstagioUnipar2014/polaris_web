class AlterarAtributoSociedade < ActiveRecord::Migration
  def change
    rename_column :sociedades, :propridade_id, :propriedade_id
  end
end
