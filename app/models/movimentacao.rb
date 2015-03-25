class Movimentacao < ActiveRecord::Base
  belongs_to :conta
  belongs_to :propriedade

  usar_como_dinheiro :valor
end
