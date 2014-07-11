class AddColumnClassificacaoToAnimal < ActiveRecord::Migration
  def change
    add_reference :animais, :classificacao, index: true
  end
end
