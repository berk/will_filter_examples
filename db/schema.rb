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

ActiveRecord::Schema.define(:version => 20090418062225) do

  create_table "event_members", :force => true do |t|
    t.integer  "event_id"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.integer  "profile_id"
    t.string   "type"
    t.string   "name"
    t.string   "headline"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "model_filters", :force => true do |t|
    t.string   "type"
    t.string   "model_class_name"
    t.string   "name"
    t.text     "data"
    t.string   "identity_type"
    t.integer  "identity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "model_filters", ["identity_type", "identity_id"], :name => "index_model_filters_on_identity_type_and_identity_id"

  create_table "profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
