class NotificacoesController < ApplicationController
  has_scope :do_dia, :type => :boolean
  has_scope :da_semana, :type => :boolean
  has_scope :do_mes, :type => :boolean
  
  def index
      @notificacoes = apply_scopes(Notificacao).da_propriedade(current_usuario.propriedade)
  end
end
