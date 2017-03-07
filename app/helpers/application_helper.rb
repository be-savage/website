module ApplicationHelper
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

  def allos_dates
    if (Time.now > Time.new(2017,03,8,16,00) and Time.now < Time.new(2017,03,8,0,0)) or (Time.now > Time.new(2017,03,13,5,0) and Time.now < Time.new(2017,03,13,18,0))
      true
    else
      false
    end
  end
end
