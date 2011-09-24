class CreateAddtions < ActiveRecord::Migration
  def self.up
    create_table :addtions do |t|
      t.string :fb_id

      t.timestamps
    end
  end

  def self.down
    drop_table :addtions
  end
end
