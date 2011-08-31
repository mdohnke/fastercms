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

  def display_tree_recursive(tree, parent_id)
    ret = "<ul>"
    tree.each do |node|
      if node.parent_id == parent_id
        ret += "<li>"
        ret += yield node
        ret += display_tree_recursive(tree, node.id) { |n| yield n } unless node.children.empty?
        ret += "</li>"
      end
    end
    ret += "</ul>"
    ret.html_safe
  end

end
