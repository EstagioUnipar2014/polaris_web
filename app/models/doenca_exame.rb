class DoencaExame < ActiveRecord::Base
  belongs_to :doenca
  belongs_to :exame
end
