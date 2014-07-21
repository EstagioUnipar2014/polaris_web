class Ciclo < ActiveRecord::Base
  has_and_belongs_to_many :alimentos
  has_and_belongs_to_many :dietas
  
  validates_presence_of :descricao
  validates_uniqueness_of :descricao
end
