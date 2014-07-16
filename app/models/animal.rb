class Animal < ActiveRecord::Base
  belongs_to :raca
  belongs_to :classificacao
  
  has_many :pesagens, dependent: :destroy
  has_many :vacinas,  dependent: :destroy
  has_many :exames,   dependent: :destroy
  has_many :ordenhas, dependent: :destroy
  
  has_and_belongs_to_many :doencas
  has_and_belongs_to_many :dietas
  
  validates :identificacao, :sexo, :raca_id, :classificacao_id, presence: true
  validates :identificacao, uniqueness: true
  validates_numericality_of :identificacao
  
  def identificacaoNome
    identificacao+', '+nome  
  end
  
end
