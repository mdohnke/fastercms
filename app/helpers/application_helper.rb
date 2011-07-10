# encoding: utf-8
module ApplicationHelper

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

end
