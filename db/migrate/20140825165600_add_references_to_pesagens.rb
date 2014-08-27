class AddReferencesToPesagens < ActiveRecord::Migration
  def change
    add_reference :pesagens, :unidade, index: true
  end
end
