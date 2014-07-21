class Cobertura < ActiveRecord::Base
  belongs_to :cio
  belongs_to :animal
  
  validates :cio_id, :animal_id, presence: true
end
