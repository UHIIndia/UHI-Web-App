# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20150427085300) do

  create_table "cities", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["code"], :name => "index_cities_on_code"
  add_index "cities", ["name"], :name => "index_cities_on_name"

  create_table "houses", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "slum_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "houses", ["name"], :name => "index_houses_on_name"

  create_table "slums", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "slums", ["name"], :name => "index_slums_on_name"

  create_table "women", :force => true do |t|
    t.string   "name",              :null => false
    t.string   "woman_id",          :null => false
    t.integer  "house_id"
    t.string   "visible_id"
    t.date     "date_of_birth"
    t.integer  "age"
    t.string   "husband_name"
    t.string   "phone"
    t.date     "registration_date"
    t.boolean  "is_pregnant"
    t.boolean  "pregnancy_choice"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "women", ["name"], :name => "index_women_on_name"
  add_index "women", ["phone"], :name => "index_women_on_phone"
  add_index "women", ["visible_id"], :name => "index_women_on_visible_id"
  add_index "women", ["woman_id"], :name => "index_women_on_woman_id"

end
