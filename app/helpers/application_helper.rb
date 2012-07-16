module ApplicationHelper
  
def title
  baseTitle = "Ruby on Rails Tutorial Sample App"
  if @title.nil?
      baseTitle
  else 
      "#{baseTitle} | #{@title}"
  end     
end

end
