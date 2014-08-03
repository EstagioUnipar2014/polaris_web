class Dieta < ActiveRecord::Base
  has_many :animal_dieta
  has_many :animais, :through => :animal_dieta
  has_and_belongs_to_many :ciclo
  accepts_nested_attributes_for :ciclo
end