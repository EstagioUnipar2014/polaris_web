class Dieta < ActiveRecord::Base
  has_one :propriedade
  has_many :animal_dieta, dependent: :restrict_with_error
  has_many :animais, :through => :animal_dieta, dependent: :restrict_with_error
  has_many :ciclo_dieta, dependent: :destroy
  has_many :ciclos, :through => :ciclo_dieta, dependent: :destroy
  
  accepts_nested_attributes_for :ciclos, :allow_destroy => true
  
  validates :descricao, presence: true

  scope :ativa, -> {Dieta.joins(:animal_dieta).where("animal_dieta.data_fim IS NULL")}
  scope :propriedade, ->(usuario) {where(:propriedade_id => usuario.propriedade_id)}
end
