class Pesagem < ActiveRecord::Base
  belongs_to :animal
  
  validates :animal_id, :peso, presence: true
  
  scope :animal, ->(animal) {where(:animal_id => animal)}
  
  scope :propriedade, ->(usuario) {Pesagem.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
end
