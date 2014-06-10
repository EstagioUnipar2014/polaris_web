class CreateAnimais < ActiveRecord::Migration
  def change
    create_table :animais do |t|
      t.string :identificacao
      t.string :nome
      t.date :data_nascimento
      t.string :sexo
      t.boolean :ativo
      t.boolean :lactacao
      t.boolean :nascido_na_propriedade
      t.string :informacoes

      t.timestamps
    end
  end
end
