class Cobertura < ActiveRecord::Base
  belongs_to :cio
  belongs_to :animal
  
  scope :propriedade, ->(usuario) {Cobertura.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
end
