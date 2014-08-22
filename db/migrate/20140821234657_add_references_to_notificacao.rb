class AddReferencesToNotificacao < ActiveRecord::Migration
  def change
    add_reference :notificacoes, :propriedade, index: true
  end
end
