class Page < ActiveRecord::Base
  has_friendly_id :title, :use_slug => true
  acts_as_tree
  has_and_belongs_to_many :components
  belongs_to :template

end
