class AddReferencesToVacinas < ActiveRecord::Migration
  def change
    add_reference :vacinas, :unidade, index: true
  end
end
