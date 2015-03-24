class RemoveUsuarioFromConta < ActiveRecord::Migration
  def change
    remove_column :contas, :usuario_id
  end
end
