class CreateCiclos < ActiveRecord::Migration
  def change
    create_table :ciclos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
