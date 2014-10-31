class Cio < ActiveRecord::Base
  belongs_to :animal
  has_one :cobertura
  has_one :previsao_cio
  
  after_save :criar_previsao_cio 

  accepts_nested_attributes_for :cobertura, reject_if: proc { |attributes| attributes['animal_id'].blank? }
  has_one :cobertura, dependent: :destroy

  scope :propriedade, ->(usuario) {Cio.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
  
  def criar_previsao_cio
    if self.data_cio.blank?
      previsao_cio = PrevisaoCio.new cio: self
      previsao_cio.data = self.data_cio + 21.days
      previsao_cio.save
    end
  end
  
end
