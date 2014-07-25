class AnimalDoenca < ActiveRecord::Base
  belongs_to :animal
  belongs_to :doenca
end
