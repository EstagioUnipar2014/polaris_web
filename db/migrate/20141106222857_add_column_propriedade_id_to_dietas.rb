class AddColumnPropriedadeIdToDietas < ActiveRecord::Migration
  def change
    add_reference :dietas, :propriedade, index: true
  end
end
