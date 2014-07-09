class Raca < ActiveRecord::Base
  has_many :animais, dependent: :restrict_with_error
  
  validates_uniqueness_of :nome, :case_sensitive => false
  validates_presence_of :nome
end
