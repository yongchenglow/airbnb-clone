module ApplicationHelper
  def active_class(path)
    return 'active' if request.path == path
  end
end
