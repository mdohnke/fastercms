# encoding: utf-8
module ApplicationHelper
  
  # Rails way to render 404 error page
  def render_404
    raise ActionController::RoutingError.new('Not Found!')
  end

  # removes dangerous characters from a string
  def sanitize_url_component(str)
    str.gsub(/[ÄäÆæǼǽ]/, 'ae').
      gsub(/[Ööóõòô]/, 'oe').
      gsub(/[Üüúùû]/, 'ue').
      gsub(/ß/, 'ss').
      gsub(/[ÀÁÂÃÄÅàáâãäå]/, 'a').
      gsub(/[ÇçĆćĈĉ]/, 'c').
      gsub(/[ÈÉÊËèéêë]/, 'e').
      gsub(/[ÌÍÎÏìíîïĨĩ]/, 'i').
      gsub(/[ÑñŃń]/, 'n').
      gsub(/[òóôõöÒÓÔÕÖ]/, 'o').
      gsub(/[ÝýÿŶŷŸ]/, 'y').
      gsub(/[ÝýÿŶŷŸ]/, 'y').
      gsub(/[^a-zA-Z0-9]+/, ' ').
      gsub(/[ç]/, 'c').
      gsub(/[&]/, 'e').
      gsub(/\s+/, '-').
      downcase
  end

  # TODO
  # builds a tree with all child pages
  def pagetree(page, tree = {})
    #    return page.title unless page.children
    #    page.children.each do |child|
    #
    #    end
  end

end
