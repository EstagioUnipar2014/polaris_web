class CreateNotificacoes < ActiveRecord::Migration
  def change
    create_table :notificacoes do |t|
      t.string :mensagem
      t.string :url
      t.date :data

      t.timestamps
    end
  end
end
