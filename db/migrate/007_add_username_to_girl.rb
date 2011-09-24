class AddUsernameToGirl < ActiveRecord::Migration
  def self.up
    add_column :girls, :username, :string
  end

  def self.down
    remove_column :girls, :username
  end
end
