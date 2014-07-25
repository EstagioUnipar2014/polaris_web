class CreateCiclosDietas < ActiveRecord::Migration
  def change
    create_table :ciclos_dietas do |t|

      t.timestamps
    end
  end
end
