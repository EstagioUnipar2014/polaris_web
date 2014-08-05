class Medida < ActiveRecord::Base
  belongs_to :alimento
  belongs_to :ciclo

  scope :peso, ->(ciclo) {where(:ciclo_id => ciclo)}
end
