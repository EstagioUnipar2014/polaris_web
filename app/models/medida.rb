class Medida < ActiveRecord::Base
  belongs_to :alimento
  belongs_to :ciclo

  accepts_nested_attributes_for :alimentos
end
