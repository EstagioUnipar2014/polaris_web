class ChangeColumnSexoOnAnimal < ActiveRecord::Migration
  def change
    rename_column :animais, :sexo, :sexo_cd
  end
end
