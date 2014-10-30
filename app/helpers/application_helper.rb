module ApplicationHelper
  def t_f(boolean)
      if boolean == true
        image_tag("icon-true.png")
      elsif boolean == false
        image_tag("icon-false.png")  
      end
  end
end
