class Vacina < ActiveRecord::Base
  belongs_to :animal
  belongs_to :tipo_vacina
  belongs_to :medicamento
  
  validates :animal_id, :tipo_vacina_id, :medicamento_id, :dosagem, presence: true
  
  scope :pendente, -> { where(efetuada: false) }
   
end
