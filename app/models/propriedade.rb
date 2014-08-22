class Propriedade < ActiveRecord::Base
  has_many :animais
  has_many :notificacoes
end
