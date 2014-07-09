class Pesagem < ActiveRecord::Base
  belongs_to :animal
  
  validates :animal_id, :peso, presence: true
end
