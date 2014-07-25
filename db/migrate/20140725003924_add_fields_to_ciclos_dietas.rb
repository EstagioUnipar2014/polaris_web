class AddFieldsToCiclosDietas < ActiveRecord::Migration
  def change
    add_reference :ciclos_dietas, :dieta, index: true
    add_reference :ciclos_dietas, :ciclo, index: true
  end
end
