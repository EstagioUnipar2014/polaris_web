class CreateImagens < ActiveRecord::Migration
  def change
    create_table :imagens do |t|
      t.string :url
      t.references :animal, index: true

      t.timestamps
    end
  end
end
