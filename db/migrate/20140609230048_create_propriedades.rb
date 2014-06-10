class CreatePropriedades < ActiveRecord::Migration
  def change
    create_table :propriedades do |t|
      t.string :nome

      t.timestamps
    end
  end
end
