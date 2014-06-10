class CreateVacinas < ActiveRecord::Migration
  def change
    create_table :vacinas do |t|
      t.date :data_vacina
      t.boolean :efetuada
      t.float :dosagem
      t.references :animal, index: true
      t.references :tipo_vacina, index: true

      t.timestamps
    end
  end
end
