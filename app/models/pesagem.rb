class Pesagem < ActiveRecord::Base
  belongs_to :animal
  scope :animal, ->(animal) {where(:animal_id => animal)}
  scope :propriedade, ->(usuario) {Pesagem.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
  validates :animal, presence: true
  validates :peso, presence: true
  validates :data_pesagem, presence: true
end
