class Alimento < ActiveRecord::Base
  has_many :medidas, dependent: :restrict_with_error
  has_many :ciclos, :through => :medidas

  validates_presence_of :descricao
  validates_uniqueness_of :descricao, :case_sensitive => false  
end
