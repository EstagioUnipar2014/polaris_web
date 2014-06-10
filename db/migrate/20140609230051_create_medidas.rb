class CreateMedidas < ActiveRecord::Migration
  def change
    create_table :medidas do |t|
      t.integer:quantidade
      t.references :alimento, index: true
      t.references :ciclo, index: true

      t.timestamps
    end
  end
end
