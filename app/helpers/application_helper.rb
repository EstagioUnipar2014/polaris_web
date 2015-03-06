module ApplicationHelper
  def t_f(boolean)
      if boolean == true
        image_tag("icon-true.png", size: "25x25")
      else
        image_tag("icon-false.png", size: "25x25")
      end
  end
end
