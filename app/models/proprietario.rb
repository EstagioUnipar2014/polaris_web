class Proprietario < ActiveRecord::Base
  has_many :sociedade
  has_many :propriedades, :through => :sociedade
  
  validates :nome, presence: true, uniqueness: true
end
