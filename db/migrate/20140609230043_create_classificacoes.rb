class CreateClassificacoes < ActiveRecord::Migration
  def change
    create_table :classificacoes do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
