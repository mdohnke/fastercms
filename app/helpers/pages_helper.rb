module PagesHelper
  include ApplicationHelper

  def get_path(page, ancestors=[])
    ancestors.push page.name
    # leading slash?
    return "/"+(ancestors.reverse).join("/") if page.parent.nil?
    return get_path(page.parent, ancestors)
  end

  def title2name(title)
    # sanitize url componente from ApplicationHelper
    return sanitize_url_component title
  end

  def build_page_tree(pages, result = {})
    pages.each do |page|
      result[page.id] = page.title if page.children.empty?
      result[page.id] = build_page_tree page.children, result
    end
    return result
  end

end
