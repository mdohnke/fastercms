module PagesHelper
  include ApplicationHelper

  def get_path(page, ancestors=[])
    ancestors.push page.name
    # leading slash?
    return "/"+(ancestors.reverse).join("/") if page.parent.nil?
    return get_path(page.parent, ancestors)
  end

  def title2name(title)
    return sanitize_url_component title
  end

end
