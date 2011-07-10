class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.string :name
      t.string :chached_slug
      t.text :description
      t.boolean :is_startpage, :default => false
      t.integer :parent_id
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
