class CreateAnimaisDoencas < ActiveRecord::Migration
  def change
    create_table :animais_doencas do |t|
      t.references :animal, index: true
      t.references :doenca, index: true

      t.timestamps
    end
  end
end
