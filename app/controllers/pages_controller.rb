require 'rss/2.0'
require 'open-uri'
class PagesController < ApplicationController
  skip_before_filter :authenticate_usuario!
  def index
    if usuario_signed_in?
      @feed = Feedjira::Feed.fetch_and_parse('http://www.ruralbr.com.br/ultimas-noticias-rss/')
      @previsao = Feedjira::Feed.fetch_and_parse('http://www.climatempo.com.br/rss/regioes.xml')
      byebug
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
