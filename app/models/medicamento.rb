class Medicamento < ActiveRecord::Base
  has_many :vacinas, dependent: :restrict_with_error
  belongs_to :tipo_medicamento
  
  validates :nome, :tipo_medicamento_id, presence: true
  validates_uniqueness_of :nome, :case_sensitive => false
  
  def nomeTipo
    nome+', '+tipo_medicamento.descricao
  end
end
