module ApplicationHelper
  def body_id
    "#{controller.controller_name}-#{controller.action_name}"
  end
end
