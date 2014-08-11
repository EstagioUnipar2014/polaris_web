class Cio < ActiveRecord::Base
  belongs_to :animal
  has_one :cobertura

  accepts_nested_attributes_for :cobertura
  scope :propriedade, ->(usuario) {Cio.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
end
