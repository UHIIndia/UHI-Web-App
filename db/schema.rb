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

ActiveRecord::Schema.define(:version => 20150427150402) do

  create_table "anc_visits", :force => true do |t|
    t.integer  "woman_id"
    t.integer  "month_id",                            :null => false
    t.datetime "asha_visit_date"
    t.datetime "anm_visit_date"
    t.integer  "weight"
    t.integer  "tt"
    t.integer  "hb"
    t.boolean  "pale_eye",         :default => false
    t.boolean  "night_blindness",  :default => false
    t.boolean  "bleeding",         :default => false
    t.boolean  "malaria",          :default => false
    t.integer  "ifa_tablets"
    t.string   "bp"
    t.boolean  "urine_protien",    :default => false
    t.boolean  "swelling",         :default => false
    t.boolean  "headache",         :default => false
    t.boolean  "urine_sugar",      :default => false
    t.boolean  "fever",            :default => false
    t.boolean  "foul_smelling",    :default => false
    t.boolean  "other_infections", :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  add_index "anc_visits", ["month_id"], :name => "index_anc_visits_on_month_id"
  add_index "anc_visits", ["woman_id"], :name => "index_anc_visits_on_woman_id"

  create_table "children", :force => true do |t|
    t.string   "name",              :null => false
    t.integer  "woman_id"
    t.string   "father_name"
    t.string   "display_id"
    t.string   "child_id"
    t.string   "sex"
    t.date     "registration_date"
    t.datetime "date_of_birth"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "children", ["child_id"], :name => "index_children_on_child_id"
  add_index "children", ["father_name"], :name => "index_children_on_father_name"
  add_index "children", ["registration_date"], :name => "index_children_on_registration_date"
  add_index "children", ["sex"], :name => "index_children_on_sex"
  add_index "children", ["woman_id"], :name => "index_children_on_woman_id"

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
  add_index "houses", ["slum_id"], :name => "index_houses_on_slum_id"

  create_table "slums", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "slums", ["city_id"], :name => "index_slums_on_city_id"
  add_index "slums", ["name"], :name => "index_slums_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name",                             :null => false
    t.string   "last_name",                              :null => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

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
  add_index "women", ["house_id"], :name => "index_women_on_house_id"
  add_index "women", ["maternal_outcome"], :name => "index_women_on_maternal_outcome"
  add_index "women", ["name"], :name => "index_women_on_name"
  add_index "women", ["phone"], :name => "index_women_on_phone"
  add_index "women", ["visible_id"], :name => "index_women_on_visible_id"
  add_index "women", ["woman_id"], :name => "index_women_on_woman_id"

end
