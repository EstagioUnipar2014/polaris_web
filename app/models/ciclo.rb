class Ciclo < ActiveRecord::Base
  has_many :ciclo_dieta
  has_many :dietas, :through => :ciclo_dieta, dependent: :restrict_with_error
  has_many :medidas, dependent: :destroy
  has_many :alimentos, :through => :medidas

  accepts_nested_attributes_for :medidas, :allow_destroy => true

  validates_presence_of :descricao
end
