class Cio < ActiveRecord::Base
  belongs_to :animal
  has_one :cobertura
  has_one :previsao_cio, dependent: :destroy
  
  after_save :criar_previsao_cio 
  before_destroy :deleta_cobertura

  accepts_nested_attributes_for :cobertura, reject_if: proc { |attributes| attributes['animal_id'].blank? }
  
  validates :data_cio, presence: true

  scope :propriedade, ->(usuario) {Cio.joins(:animal).where("animais.propriedade_id = ?", usuario.propriedade_id)}
  
  scope :do_dia, -> {where(:data_cio => Date.today)}
  
  def criar_previsao_cio
    if self.cobertura.blank?
      previsao_cio = PrevisaoCio.new cio: self
      previsao_cio.data = self.data_cio + 21.days
      previsao_cio.save
    end
  end
  
  def deleta_cobertura
    if not cobertura.blank?
      cobertura = self.cobertura
      cobertura.destroy
    end
  end
  
end
