class CreateDieta < ActiveRecord::Migration
  def change
    create_table :dieta do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
