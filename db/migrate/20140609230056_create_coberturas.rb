class CreateCoberturas < ActiveRecord::Migration
  def change
    create_table :coberturas do |t|
      t.date :data
      t.references :cio, index: true
      t.references :animal, index: true

      t.timestamps
    end
  end
end
