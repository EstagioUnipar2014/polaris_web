class Ciclo < ActiveRecord::Base
  has_and_belongs_to_many :dietas
  has_many :medidas, dependent: :destroy
  has_many :alimentos, :through => :medidas

  accepts_nested_attributes_for :medidas

  validates_presence_of :descricao
end
