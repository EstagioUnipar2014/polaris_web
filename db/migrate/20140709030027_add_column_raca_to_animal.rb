class AddColumnRacaToAnimal < ActiveRecord::Migration
  def change
    add_reference :animais, :raca, index: true
  end
end
