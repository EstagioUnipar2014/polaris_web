class CreateRacas < ActiveRecord::Migration
  def change
    create_table :racas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
