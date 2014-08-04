class Animal < ActiveRecord::Base
  belongs_to :raca
  belongs_to :classificacao

  has_many :pesagens, dependent: :destroy
  has_many :vacinas,  dependent: :destroy, :inverse_of => :animal
  has_many :exames,   dependent: :destroy
  has_many :ordenhas, dependent: :destroy
  has_many :cios,     dependent: :destroy
  has_many :coberturas, dependent: :destroy

  has_and_belongs_to_many :doencas
  has_many :animal_dieta
  has_many :dietas, :through => :animal_dieta

  accepts_nested_attributes_for :vacinas, :allow_destroy => true

  validates :identificacao, presence: true, uniqueness: true
  validates :sexo, presence: true
  validates :raca, presence: true
  validates :classificacao, presence: true

  def identificacaoNome
    identificacao+', '+nome
  end

end
