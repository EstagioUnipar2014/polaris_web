class CicloDieta < ActiveRecord::Base
  belongs_to :ciclo
  belongs_to :dieta
end
