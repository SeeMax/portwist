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

ActiveRecord::Schema.define(:version => 20120415210541) do

  create_table "photo_sets", :force => true do |t|
    t.string   "photo_1"
    t.string   "photo_2"
    t.string   "your_name"
    t.string   "your_title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",     :default => "pending", :null => false
  end

  create_table "photo_uploads", :force => true do |t|
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
