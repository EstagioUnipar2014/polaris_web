class Pesagem < ActiveRecord::Base
  belongs_to :animal
  validates :animal, presence: true
  validates :peso, presence: true
  validates :data_pesagem, presence: true
end
