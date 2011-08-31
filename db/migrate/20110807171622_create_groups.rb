class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name
      t.timestamps
    end

    Group.create(
      :name => "Administrators"
    )
    admin = User.first
    admin.group = Group.first
    admin.save!

  end

  def self.down
    drop_table :groups
  end
end
