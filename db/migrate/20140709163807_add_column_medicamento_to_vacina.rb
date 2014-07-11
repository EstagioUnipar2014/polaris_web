class AddColumnMedicamentoToVacina < ActiveRecord::Migration
  def change
    add_reference :vacinas, :medicamento, index: true
  end
end
