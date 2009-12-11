class CreateEventMembers < ActiveRecord::Migration
  def self.up
    create_table :event_members do |t|
      t.integer :event_id
      t.integer :profile_id
      t.timestamps
    end
  end

  def self.down
    drop_table :event_members
  end
end
