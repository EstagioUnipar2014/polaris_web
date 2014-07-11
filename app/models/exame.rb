class Exame < ActiveRecord::Base
  belongs_to :animal
  belongs_to :tipo_exame
  
  validates :animal_id, :tipo_exame_id, presence: true
end
