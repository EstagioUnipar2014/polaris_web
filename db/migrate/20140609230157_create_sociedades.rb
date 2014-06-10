class CreateSociedades < ActiveRecord::Migration
  def change
    create_table :sociedades do |t|
      t.references :propridade, index: true
      t.references :proprietario, index: true

      t.timestamps
    end
  end
end
