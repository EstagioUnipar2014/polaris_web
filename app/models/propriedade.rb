class Propriedade < ActiveRecord::Base
  has_many :animais, dependent: :destroy
  has_many :notificacoes, dependent: :destroy
  has_many :usuarios, dependent: :destroy
  has_many :dietas, dependent: :destroy
  has_many :sociedade
  has_many :proprietarios, :through => :sociedade
  
  validates :nome, presence: true, uniqueness: true
end
