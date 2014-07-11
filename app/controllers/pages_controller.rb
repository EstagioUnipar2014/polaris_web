class PagesController < ApplicationController
  skip_before_filter :authenticate_usuario!
  def index
    #if usuario_signed_in?
    if true
      render 'index'
    else
      render 'index_unlogged'
    end
  end

  def sobre
  end

  def contato
  end
end
