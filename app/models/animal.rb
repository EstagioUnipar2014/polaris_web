class Animal < ActiveRecord::Base
  belongs_to :raca
  belongs_to :classificacao
  
  has_many :pesagens, dependent: :destroy
  has_many :vacinas,  dependent: :destroy
  has_many :exames,   dependent: :destroy
  
  validates :identificacao, :sexo, :raca_id, :classificacao_id, presence: true
  validates :identificacao, uniqueness: true
  validates_numericality_of :identificacao
  
  def identificacaoNome
    identificacao+', '+nome  
  end
  
end
