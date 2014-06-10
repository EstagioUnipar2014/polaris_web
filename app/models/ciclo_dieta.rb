class CicloDieta < ActiveRecord::Base
  belongs_to :dieta
  belongs_to :ciclo
end
