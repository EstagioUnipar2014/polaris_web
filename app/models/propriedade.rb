class Propriedade < ActiveRecord::Base
  has_many :animais
  has_many :notificacoes
  has_many :usuarios
end
