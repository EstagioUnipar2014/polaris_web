class Raca < ActiveRecord::Base
  has_many :animais, dependent: :restrict_with_error
  
  RailsAdmin.config {|c| c.label_methods << :nome}

  validates_uniqueness_of :nome, :case_sensitive => false
  validates_presence_of :nome
end
