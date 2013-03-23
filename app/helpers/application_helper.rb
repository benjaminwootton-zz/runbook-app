module ApplicationHelper
  
  def link_to_submit(text)
    link_to_function text, "$(this).closest('form').submit()"
  end
end
