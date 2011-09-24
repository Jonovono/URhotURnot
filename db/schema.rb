# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 8) do

  create_table "addtions", :force => true do |t|
    t.string   "fb_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "girls", :force => true do |t|
    t.integer  "score"
    t.integer  "wins"
    t.string   "picture"
    t.string   "name"
    t.string   "fb_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  create_table "guys", :force => true do |t|
    t.integer  "score"
    t.integer  "wins"
    t.string   "picture"
    t.string   "name"
    t.string   "fb_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  create_table "infos", :force => true do |t|
    t.integer  "votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "removals", :force => true do |t|
    t.string   "fb_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stats", :force => true do |t|
    t.integer  "girl_votes"
    t.integer  "boy_votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
