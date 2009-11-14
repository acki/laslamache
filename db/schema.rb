# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091114135006) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
  end

  create_table "messages", :force => true do |t|
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", :force => true do |t|
    t.decimal  "price"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "text"
    t.decimal  "price"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
