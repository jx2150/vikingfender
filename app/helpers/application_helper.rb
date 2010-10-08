module ApplicationHelper
  def body_classes
    @fender_type = params[:fender_type]||''
    @body_classes ||= [controller.controller_name + ' ' + @fender_type]
  end
  def navigation
  end
end
