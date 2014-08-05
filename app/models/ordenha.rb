class Ordenha < ActiveRecord::Base
  belongs_to :animal
  
  validates :animal_id, :quantidade, presence: true
  
  scope :propriedade, ->(usuario) {Ordenha.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
end
