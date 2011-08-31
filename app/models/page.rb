class Page < ActiveRecord::Base
  include PagesHelper

  before_validation :ensure_creating_name
  validates :title, :presence => true
  validates :name, :presence => true
  validates :description, :presence => true
  has_friendly_id :name, :use_slug => true
  acts_as_tree :order => "name", :counter_cache => true

  # Returns path of the current page
  # Using get_path method from PagesHelper
  def path
    return get_path self
  end

  #protected
  def ensure_creating_name
    puts "="*100
    if name.nil?
      self.name = title2name(title)
    end
  end

end
