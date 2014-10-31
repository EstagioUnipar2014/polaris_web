class RemoveDataPrevisaoFromCios < ActiveRecord::Migration
  def change
    remove_column :cios, :previsao_proximo
  end
end
