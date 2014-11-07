class Cobertura < ActiveRecord::Base
  has_one :cio, dependent: :restrict_with_error
  belongs_to :animal

  scope :propriedade, ->(usuario) {Cobertura.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
end
