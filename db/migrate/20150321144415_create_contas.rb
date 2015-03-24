class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.decimal :saldo
      t.boolean :ativa
      t.string :descricao
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
