class CreateDoencasExames < ActiveRecord::Migration
  def change
    create_table :doencas_exames do |t|
      t.references :doenca, index: true
      t.references :exame, index: true

      t.timestamps
    end
  end
end
