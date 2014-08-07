class Ciclo < ActiveRecord::Base 
  has_and_belongs_to_many :dietas
  has_many :medidas
  has_many :alimentos, :through => :medidas
  
  validates_presence_of :descricao
  validates_uniqueness_of :descricao
end
