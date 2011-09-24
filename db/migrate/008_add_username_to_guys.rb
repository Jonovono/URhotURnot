class AddUsernameToGuys < ActiveRecord::Migration
  def self.up
    add_column :guys, :username, :string
  end

  def self.down
    remove_column :guys, :username
  end
end
