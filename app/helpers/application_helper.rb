module ApplicationHelper
  def nav_link_class(controller)
    if params[:controller] == controller
      'selected'
    else
      ''
    end
  end
end
