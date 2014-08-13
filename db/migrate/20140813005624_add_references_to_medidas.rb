class AddReferencesToMedidas < ActiveRecord::Migration
  def change
    add_reference :medidas, :unidades, index: true
  end
end
