class Animal < ActiveRecord::Base
  belongs_to :raca
  belongs_to :classificacao
  belongs_to :propriedade

  has_many :pesagens, dependent: :destroy
  has_many :vacinas,  dependent: :destroy
  has_many :exames,   dependent: :destroy
  has_many :ordenhas, dependent: :destroy
  has_many :cios,     dependent: :destroy
  has_many :coberturas, dependent: :destroy

  has_many :animal_doencas
  has_many :doencas, :through => :animal_doencas
  has_many :animal_dieta
  has_many :dietas, :through => :animal_dieta

  accepts_nested_attributes_for :vacinas, :allow_destroy => true
  accepts_nested_attributes_for :animal_dieta

  validates :identificacao, presence: true, uniqueness: true
  validates :sexo, presence: true
  validates :raca, presence: true
  validates :classificacao, presence: true

  scope :propriedade, ->(usuario) {where(:propriedade_id => usuario.propriedade_id)}
  scope :macho, -> {where(:sexo => 'M')}
  scope :femea, -> {where(:sexo => 'F')}
  scope :ativo, -> {where(:ativo => true)}
  scope :lactacao, -> {where(:lactacao => true)}
  scope :nascido_propriedade, -> {where(:nascido_na_propriedade => true)}

  def identificacaoNome
    identificacao+', '+nome
  end

end
