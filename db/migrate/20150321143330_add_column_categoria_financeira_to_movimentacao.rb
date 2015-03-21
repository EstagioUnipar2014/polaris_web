class AddColumnCategoriaFinanceiraToMovimentacao < ActiveRecord::Migration
  def change
    add_reference :movimentacoes, :categoria_financeira, index: true
  end
end
