class Doenca < ActiveRecord::Base
  has_many :animal_doencas, dependent: :restrict_with_error
  has_many :animais, :through => :animal_doencas
  has_and_belongs_to_many :exames
  
  validates :nome, presence: true, uniqueness: true
end
