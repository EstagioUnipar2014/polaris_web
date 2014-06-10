class Medida < ActiveRecord::Base
  belongs_to :alimento
  belongs_to :ciclo
end
