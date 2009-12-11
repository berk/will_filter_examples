class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer   :profile_id
      t.string    :type
      t.string    :name
      t.string    :headline
      t.datetime  :start_time
      t.datetime  :end_time

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
