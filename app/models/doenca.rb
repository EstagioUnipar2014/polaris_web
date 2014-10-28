class Doenca < ActiveRecord::Base
  has_many :animal_doencas
  has_many :animais, :through => :animal_doencas
  has_and_belongs_to_many :exames
end
