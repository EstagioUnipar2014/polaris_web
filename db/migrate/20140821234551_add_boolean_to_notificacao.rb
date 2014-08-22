class AddBooleanToNotificacao < ActiveRecord::Migration
  def change
    add_column :notificacoes, :visualizada, :boolean
  end
end
