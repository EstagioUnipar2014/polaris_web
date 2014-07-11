class TipoMedicamento < ActiveRecord::Base
  has_many :medicamentos, dependent: :restrict_with_error
  
  validates_presence_of :descricao
  validates_uniqueness_of :descricao, :case_sensitive => false
end
