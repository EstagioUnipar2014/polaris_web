class CreateAlimentos < ActiveRecord::Migration
  def change
    create_table :alimentos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
