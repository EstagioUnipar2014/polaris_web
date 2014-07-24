class CreateDietas < ActiveRecord::Migration
  def change
    create_table :dietas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
