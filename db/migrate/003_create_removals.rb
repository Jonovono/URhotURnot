class CreateRemovals < ActiveRecord::Migration
  def self.up
    create_table :removals do |t|
      t.string :fb_id

      t.timestamps
    end
  end

  def self.down
    drop_table :removals
  end
end
