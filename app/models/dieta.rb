class Dieta < ActiveRecord::Base
  has_one :propriedade
  has_many :animal_dieta, dependent: :restrict_with_error
  has_many :animais, :through => :animal_dieta, dependent: :restrict_with_error
  has_and_belongs_to_many :ciclos, :allow_destroy => true
  
  accepts_nested_attributes_for :ciclos
  
  validates :descricao, presence: true

  scope :ativa, -> {Dieta.joins(:animal_dieta).where("animal_dieta.data_fim IS NULL")}
  scope :propriedade, ->(usuario) {where(:propriedade_id => usuario.propriedade_id)}
end
