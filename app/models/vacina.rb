class Vacina < ActiveRecord::Base
  belongs_to :animal, :inverse_of => :vacinas
  belongs_to :tipo_vacina
  belongs_to :medicamento
  
  validates :animal_id, :tipo_vacina_id, :medicamento_id, :dosagem, presence: true
  
  scope :pendente, -> { where(efetuada: false) }
  
  scope :propriedade, ->(usuario) {Vacina.joins(:animal).where("animais.porpriedade_id = ?", usuario.propriedade_id)}
  
  scope :animal, ->(animal) {where(:animal_id => animal)}
end
