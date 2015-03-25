class RemoveUsuarioFromMovimentacao < ActiveRecord::Migration
  def change
    remove_column :movimentacoes, :usuario_id
  end
end
