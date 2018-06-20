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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_06_20_171400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_logging_events", force: :cascade do |t|
    t.string "stream_id", null: false
    t.string "aggregate_name", null: false
    t.string "action", null: false
    t.jsonb "payload", default: {}, null: false
    t.datetime "created_at", null: false
    t.index ["aggregate_name"], name: "index_event_logging_events_on_aggregate_name"
    t.index ["stream_id"], name: "index_event_logging_events_on_stream_id"
  end

  create_table "read_models", force: :cascade do |t|
    t.integer "write_model_id"
    t.integer "save_count"
  end

  create_table "write_models", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.integer "amount"
    t.boolean "is_valid"
    t.datetime "available_at"
  end

end