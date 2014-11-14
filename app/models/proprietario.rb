class Proprietario < ActiveRecord::Base
  has_many :sociedades
  has_many :propriedades, :through => :sociedades
  
  validates :nome, presence: true, uniqueness: true
end
