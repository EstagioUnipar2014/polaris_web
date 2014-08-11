class Dieta < ActiveRecord::Base 
  has_many :animal_dieta
  has_many :animais, :through => :animal_dieta
  has_and_belongs_to_many :ciclos, :allow_destroy => true
  accepts_nested_attributes_for :ciclos
end
