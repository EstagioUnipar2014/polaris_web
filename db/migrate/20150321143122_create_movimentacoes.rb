class CreateMovimentacoes < ActiveRecord::Migration
  def change
    create_table :movimentacoes do |t|
      t.string :descricao
      t.date :data_agendamento
      t.date :data_efetivacao
      t.decimal :valor, precision: 14, scale: 2
      t.boolean :efetivada
      t.string :tipo_cd
      t.references :conta, index: true
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
