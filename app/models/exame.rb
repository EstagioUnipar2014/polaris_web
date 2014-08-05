class Exame < ActiveRecord::Base
  belongs_to :animal
  belongs_to :tipo_exame
  has_and_belongs_to_many :doencas, dependent: :destroy

  validates :animal, presence: true
  validates :tipo_exame, presence: true
  validates :data, presence: true

  scope :pendente, -> {where(efetuado: false)}
end
