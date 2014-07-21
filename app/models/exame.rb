class Exame < ActiveRecord::Base
  belongs_to :animal
  belongs_to :tipo_exame
  has_and_belongs_to_many :doencas
  
  validates :animal_id, :tipo_exame_id, presence: true
end
