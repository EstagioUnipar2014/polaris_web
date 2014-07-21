class Alimento < ActiveRecord::Base
  has_and_belongs_to_many :ciclos
  
  validates_presence_of :descricao
  validates_uniqueness_of :descricao, :case_sensitive => false
end
