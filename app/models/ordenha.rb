class Ordenha < ActiveRecord::Base
  belongs_to :animal
  
  validates :animal_id, :quantidade, presence: true
end
