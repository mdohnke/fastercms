class Page < ActiveRecord::Base
  include PagesHelper

  validates_presence_of :title, :name, :description
  before_validation :ensure_creating_name
  has_friendly_id :name, :use_slug => true
  acts_as_tree

  # Returns path of the current page
  # Using get_path method from PagesHelper
  def path
    return get_path self
  end

  #protected
  def ensure_creating_name
    if name.nil?
      self.name = title2name(title)
    end
  end

end
