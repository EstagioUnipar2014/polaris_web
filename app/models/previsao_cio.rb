class PrevisaoCio < ActiveRecord::Base
  belongs_to :cio
  
  scope :do_dia, -> {where(:data => Date.today)} 
  
end

