module ApplicationHelper
  
def title
  baseTitle = "Ruby on Rails Tutorial Sample App"
  if @title.nil?
      baseTitle
  else 
      "#{baseTitle} | #{@title}"
  end     
end

def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
end

end
