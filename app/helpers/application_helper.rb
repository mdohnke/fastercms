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

  # development stuff
  def show_debug_info html = ""
    html << '<fieldset id="debug">'
    html << '<legend>Debug-Info</legend>'
    html << params.to_s
    html << '</fieldset>'
    html.html_safe
  end

end
