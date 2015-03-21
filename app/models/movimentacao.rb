class Movimentacao < ActiveRecord::Base
  belongs_to :conta
  belongs_to :usuario

  usar_como_dinheiro :valor
end
