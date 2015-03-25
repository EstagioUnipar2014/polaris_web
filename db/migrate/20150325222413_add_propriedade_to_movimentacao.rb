class AddPropriedadeToMovimentacao < ActiveRecord::Migration
  def change
    add_reference :movimentacoes, :propriedade, index: true
  end
end
