class Propriedade < ActiveRecord::Base
  has_many :animais
  has_many :notificacoes
  has_many :usuarios
  
  has_many :sociedade
  has_many :proprietarios, :through => :sociedade
end
