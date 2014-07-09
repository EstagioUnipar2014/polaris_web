class Medicamento < ActiveRecord::Base
  belongs_to :tipo_medicamento
  
  def nomeTipo
    nome+', '+tipo_medicamento.descricao
  end
end
