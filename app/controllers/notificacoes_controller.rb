class NotificacoesController < ApplicationController
  def index
    @notificacoes = Notificacao.da_propriedade(current_usuario.propriedade)
  end
end
