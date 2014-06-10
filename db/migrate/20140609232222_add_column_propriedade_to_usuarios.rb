class AddColumnPropriedadeToUsuarios < ActiveRecord::Migration
  def change
    add_reference :usuarios, :propriedade, index: true
  end
end
