class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.decimal :saldo, precision: 14, scale: 2
      t.boolean :ativa
      t.string :descricao
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
