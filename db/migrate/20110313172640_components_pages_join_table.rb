class ComponentsPagesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :components_pages, :id => false do |t|
      t.integer :component_id
      t.integer :page_id
    end
  end

  def self.down
    drop_table :components_pages
  end
end
