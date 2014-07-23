class Dietum < ActiveRecord::Base
  has_and_belongs_to_many :ciclos
  has_and_belongs_to_many :animais
    
  validates_presence_of :descricao
  validates_uniqueness_of :descricao
end
