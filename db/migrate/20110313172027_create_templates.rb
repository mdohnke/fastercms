class CreateTemplates < ActiveRecord::Migration
  def self.up
    create_table :templates do |t|
      t.string :title
      t.text :html_code
      t.text :css_code
      t.string :css_file
      t.timestamps
    end
  end

  def self.down
    drop_table :templates
  end
end
