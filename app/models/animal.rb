class Animal < ActiveRecord::Base
  belongs_to :raca
  belongs_to :classificacao
  has_many :pesagens
  has_many :vacinas
  has_many :exames
  validates :identificacao, :sexo, :raca_id, :classificacao_id, presence: true
  validates :identificacao, uniqueness: true
  
  def identificacaoNome
    identificacao+', '+nome  
  end
  
end
