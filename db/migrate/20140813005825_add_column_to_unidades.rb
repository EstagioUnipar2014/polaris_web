class AddColumnToUnidades < ActiveRecord::Migration
  def change
    add_column :unidades, :abreviacao, :string
    add_column :unidades, :tipo, :string
  end
end
