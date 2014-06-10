class Exame < ActiveRecord::Base
  belongs_to :animal
  belongs_to :tipo_exame
end
