class CreateCategoriasFinanceiras < ActiveRecord::Migration
  def change
    create_table :categorias_financeiras do |t|
      t.string :nome
      t.string :descricao
      t.references :usuario, index: true
      t.string :tipo_cd

      t.timestamps
    end
  end
end
