class AnimalDieta < ActiveRecord::Base
  belongs_to :dieta
  belongs_to :animal
end
