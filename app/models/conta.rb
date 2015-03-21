class Conta < ActiveRecord::Base
  belongs_to :usuario

  usar_como_dinheiro :saldo
end
