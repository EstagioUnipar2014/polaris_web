class Classificacao < ActiveRecord::Base
  has_many :animais, dependent: :restrict_with_error
  
  RailsAdmin.config {|c| c.label_methods << :descricao}	

  validates_presence_of :descricao
  validates_uniqueness_of :descricao, :case_sensitive => false 
end
