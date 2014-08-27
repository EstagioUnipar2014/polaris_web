class Unidades < ActiveRecord::Base
  has_many :animais
  has_many :vacinas
end
