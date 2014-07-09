class Vacina < ActiveRecord::Base
  belongs_to :animal
  belongs_to :tipo_vacina
  belongs_to :medicamento
end
