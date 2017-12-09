module ApplicationHelper
  def section_link_to(name, url_options, html_options = {})
    if action.eql?(@current_action) and controller.eql?(@current_controller)
      link_to(name, url_options, html_options, :class => 'current')
    else
      link_to(name, url_options, html_options)
    end
  end
end
