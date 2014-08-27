class Sociedade < ActiveRecord::Base
  belongs_to :propriedade
  belongs_to :proprietario
end
