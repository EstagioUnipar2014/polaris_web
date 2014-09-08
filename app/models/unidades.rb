class Unidades < ActiveRecord::Base
  has_many :animais
  has_many :vacinas
  has_many :medidas
end
