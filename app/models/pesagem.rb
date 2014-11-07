class Pesagem < ActiveRecord::Base
  belongs_to :animal
  belongs_to :unidade
  
  validates :animal, presence: true
  validates :peso, presence: true
  validates :data_pesagem, presence: true
  
  scope :animal, ->(animal) {where(:animal_id => animal)}
  scope :propriedade, ->(usuario) {Pesagem.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
end
