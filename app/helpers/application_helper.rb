module ApplicationHelper
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

  def allos_dates
    if Rails.env.development?
      true
    elsif (Time.now.in_time_zone > Time.new(2017,03,8,15,30).in_time_zone and Time.now < Time.new(2017,03,8,0,0).in_time_zone) or (Time.now > Time.new(2017,03,13,5,0).in_time_zone and Time.now < Time.new(2017,03,13,18,0).in_time_zone)
      true
    else
      false
    end
  end
end
