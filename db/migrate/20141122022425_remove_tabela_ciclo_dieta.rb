class RemoveTabelaCicloDieta < ActiveRecord::Migration
  def change
     drop_table :ciclo_dieta
  end
end
