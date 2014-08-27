class AnimalDieta < ActiveRecord::Base
  belongs_to :dieta
  belongs_to :animal

  scope :ativa, -> {where :data_fim.empty?}
end
