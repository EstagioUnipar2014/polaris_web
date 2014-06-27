class PagesController < ApplicationController
  skip_before_filter :authenticate_usuario!
  def index
  end

  def sobre
  end

  def contato
  end
end
