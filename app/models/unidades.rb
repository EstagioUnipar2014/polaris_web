class Unidades < ActiveRecord::Base
  has_many :vacinas, dependent: :restrict_with_error
  has_many :medidas, dependent: :restrict_with_error
  has_many :pesagens, dependent: :restrict_with_error
end
