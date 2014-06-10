class AddColumnPropriedadeToAnimais < ActiveRecord::Migration
  def change
    add_reference :animais, :propriedade, index: true
  end
end
