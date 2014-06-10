class Sociedade < ActiveRecord::Base
  belongs_to :propridade
  belongs_to :proprietario
end
