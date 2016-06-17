class DashboardController < ApplicationController
  before_action :authenticate_usuario!
  
  def dashboard
  end
end
