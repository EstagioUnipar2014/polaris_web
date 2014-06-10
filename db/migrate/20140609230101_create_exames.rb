class CreateExames < ActiveRecord::Migration
  def change
    create_table :exames do |t|
      t.date :data
      t.string :descricao
      t.boolean :efetuado
      t.string :resultado
      t.string :informacoes
      t.references :animal, index: true
      t.references :tipo_exame, index: true

      t.timestamps
    end
  end
end
