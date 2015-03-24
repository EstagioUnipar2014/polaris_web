class AddPropriedadeToConta < ActiveRecord::Migration
  def change
    add_reference :contas, :propriedade, index: true
  end
end
