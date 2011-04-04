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

ActiveRecord::Schema.define(:version => 20110209133937) do

  create_table "applicants", :force => true do |t|
    t.integer  "income",                             :default => 0,   :null => false
    t.binary   "itr",          :limit => 2147483647
    t.binary   "electricity",  :limit => 2147483647
    t.binary   "admission",    :limit => 2147483647
    t.binary   "picture",      :limit => 2147483647
    t.string   "sName",                                               :null => false
    t.string   "fName",                                               :null => false
    t.string   "mName",        :limit => 5,                           :null => false
    t.string   "sNum"
    t.string   "sex"
    t.string   "course"
    t.string   "college"
    t.string   "address"
    t.string   "pEmail"
    t.string   "pNum"
    t.string   "pAreaCode"
    t.string   "pCell"
    t.string   "rank1",        :limit => 11
    t.string   "rank2",        :limit => 11
    t.string   "reservedIn",   :limit => 15
    t.string   "rank3",        :limit => 11
    t.string   "rank4",        :limit => 11
    t.string   "rank5",        :limit => 11
    t.string   "rank6",        :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "points",                             :default => 0.0
    t.string   "provinceName", :limit => 30,                          :null => false
  end

  add_index "applicants", ["sNum"], :name => "sNum", :unique => true

  create_table "destroyed_applicants", :force => true do |t|
    t.integer  "income",                             :default => 0,   :null => false
    t.binary   "itr",          :limit => 2147483647
    t.binary   "electricity",  :limit => 2147483647
    t.binary   "admission",    :limit => 2147483647
    t.binary   "picture",      :limit => 2147483647
    t.string   "sName",                                               :null => false
    t.string   "fName",                                               :null => false
    t.string   "mName",        :limit => 5,                           :null => false
    t.string   "sNum"
    t.string   "sex"
    t.string   "course"
    t.string   "college"
    t.string   "address"
    t.string   "pEmail"
    t.string   "pNum"
    t.string   "pAreaCode"
    t.string   "pCell"
    t.string   "rank1",        :limit => 11
    t.string   "rank2",        :limit => 11
    t.string   "reservedIn",   :limit => 15
    t.string   "rank3",        :limit => 11
    t.string   "rank4",        :limit => 11
    t.string   "rank5",        :limit => 11
    t.string   "rank6",        :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "points",                             :default => 0.0
    t.string   "provinceName", :limit => 30,                          :null => false
  end

  add_index "destroyed_applicants", ["sNum"], :name => "sNum", :unique => true

  create_table "users", :primary_key => "username", :force => true do |t|
    t.string "password", :limit => 20, :null => false
  end

  add_index "users", ["username"], :name => "username", :unique => true

end
