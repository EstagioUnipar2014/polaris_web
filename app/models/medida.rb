class Medida < ActiveRecord::Base
  belongs_to :alimento
  belongs_to :ciclo
  belongs_to :unidade

  accepts_nested_attributes_for :alimento
  scope :peso, ->(ciclo) {where(:ciclo_id => ciclo)}
end
