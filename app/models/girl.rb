class Girl < ActiveRecord::Base
  attr_accessor :expected
  attr_accessible :score, :wins, :picture, :expected, :name, :fb_id, :username
end
