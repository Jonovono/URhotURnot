class CreateGirls < ActiveRecord::Migration
  def self.up
    create_table :girls do |t|
      t.integer :score
      t.integer :wins
      t.string :picture
      t.string :name
      t.string :fb_id

      t.timestamps
    end
  end

  def self.down
    drop_table :girls
  end
end
