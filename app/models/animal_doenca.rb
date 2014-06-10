class AnimalDoenca < ActiveRecord::Base
  belongs_to :doenca
  belongs_to :animal
end
