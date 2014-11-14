class Propriedade < ActiveRecord::Base
  has_many :animais, dependent: :destroy
  has_many :notificacoes, dependent: :destroy
  has_many :usuarios, dependent: :destroy
  has_many :dietas, dependent: :destroy
  has_many :sociedades
  has_many :proprietarios, :through => :sociedades
  
  validates :nome, presence: true, uniqueness: true
end
