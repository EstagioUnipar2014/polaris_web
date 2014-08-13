class Vacina < ActiveRecord::Base
  belongs_to :animal, :inverse_of => :vacinas
  belongs_to :tipo_vacina
  belongs_to :medicamento

  validates :animal,  presence: true
  validates :tipo_vacina, presence: true
  validates :medicamento, presence: true
  validates :dosagem, presence: true

  scope :pendente, -> { where(efetuada: false) }
  
  scope :propriedade, ->(usuario) {Vacina.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
  
  scope :animal, ->(animal) {where(:animal_id => animal)}
end
