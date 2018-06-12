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

ActiveRecord::Schema.define(version: 20180612163207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mushrooms", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "edible", default: true, null: false
    t.string "cap_shape", null: false
    t.string "cap_surface", null: false
    t.string "cap_color", null: false
    t.boolean "bruises", default: true, null: false
    t.string "odor", null: false
    t.string "gill_attachment", null: false
    t.string "gill_spacing", null: false
    t.string "gill_size", null: false
    t.string "gill_color", null: false
    t.string "stalk_shape", null: false
    t.string "stalk_root", null: false
    t.string "stalk_surface_above_ring", null: false
    t.string "stalk_surface_below_ring", null: false
    t.string "stalk_color_above_ring", null: false
    t.string "stalk_color_below_ring", null: false
    t.string "veil_type", null: false
    t.string "veil_color", null: false
    t.string "ring_number", null: false
    t.string "ring_type", null: false
    t.string "spore_print_color", null: false
    t.string "population", null: false
    t.string "habitat", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
