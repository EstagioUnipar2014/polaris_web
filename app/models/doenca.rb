class Doenca < ActiveRecord::Base
  has_and_belongs_to_many :animais
  has_and_belongs_to_many :exames
end
