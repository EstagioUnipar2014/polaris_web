class CreateOrdenhas < ActiveRecord::Migration
  def change
    create_table :ordenhas do |t|
      t.date :data
      t.integer :periodo
      t.float :quantidade
      t.references :animal, index: true

      t.timestamps
    end
  end
end
