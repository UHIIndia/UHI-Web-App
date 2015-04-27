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

ActiveRecord::Schema.define(:version => 20150427101642) do

  create_table "children", :force => true do |t|
    t.string   "name",              :null => false
    t.integer  "woman_id"
    t.string   "father_name"
    t.string   "display_id"
    t.string   "child_id"
    t.string   "sex"
    t.date     "registration_date"
    t.date     "date_of_birth"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "children", ["child_id"], :name => "index_children_on_child_id"
  add_index "children", ["father_name"], :name => "index_children_on_father_name"
  add_index "children", ["registration_date"], :name => "index_children_on_registration_date"
  add_index "children", ["sex"], :name => "index_children_on_sex"

  create_table "cities", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["code"], :name => "index_cities_on_code"
  add_index "cities", ["name"], :name => "index_cities_on_name"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0, :null => false
    t.integer  "attempts",   :default => 0, :null => false
    t.text     "handler",                   :null => false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

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
    t.string   "name",                  :null => false
    t.string   "woman_id",              :null => false
    t.integer  "house_id"
    t.string   "visible_id"
    t.date     "date_of_birth"
    t.integer  "age"
    t.string   "husband_name"
    t.string   "phone"
    t.date     "registration_date"
    t.boolean  "is_pregnant"
    t.boolean  "pregnancy_choice"
    t.integer  "living_children"
    t.integer  "live_births"
    t.boolean  "breast_feeding_status"
    t.string   "maternal_outcome"
    t.string   "birth_outcome"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "women", ["birth_outcome"], :name => "index_women_on_birth_outcome"
  add_index "women", ["maternal_outcome"], :name => "index_women_on_maternal_outcome"
  add_index "women", ["name"], :name => "index_women_on_name"
  add_index "women", ["phone"], :name => "index_women_on_phone"
  add_index "women", ["visible_id"], :name => "index_women_on_visible_id"
  add_index "women", ["woman_id"], :name => "index_women_on_woman_id"

end
