class Cio < ActiveRecord::Base
  belongs_to :animal
  
  scope :propriedade, ->(usuario) {Cio.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
end
