class CreateProprietarios < ActiveRecord::Migration
  def change
    create_table :proprietarios do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :cpf

      t.timestamps
    end
  end
end
