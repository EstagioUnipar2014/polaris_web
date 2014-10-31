class CreatePrevisaoCios < ActiveRecord::Migration
  def change
    create_table :previsao_cios do |t|
      t.date :data
      t.references :cio, index: true

      t.timestamps
    end
  end
end
