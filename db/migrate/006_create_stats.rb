class CreateStats < ActiveRecord::Migration
  def self.up
    create_table :stats do |t|
      t.integer :girl_votes
      t.integer :boy_votes

      t.timestamps
    end
  end

  def self.down
    drop_table :stats
  end
end
