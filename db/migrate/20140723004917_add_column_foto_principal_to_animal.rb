class AddColumnFotoPrincipalToAnimal < ActiveRecord::Migration
  def change
    add_column :animais, :foto_principal, :string
  end
end
