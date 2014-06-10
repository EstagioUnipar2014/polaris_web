class CreateDoencaExames < ActiveRecord::Migration
  def change
    create_table :doenca_exames do |t|
      t.references :doenca, index: true
      t.references :exame, index: true

      t.timestamps
    end
  end
end
