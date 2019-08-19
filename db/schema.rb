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

ActiveRecord::Schema.define(version: 20190819144934) do

  create_table "communes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "code_insee"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "intercommunality_id"
    t.integer  "street_id"
    t.index ["intercommunality_id"], name: "index_communes_on_intercommunality_id", using: :btree
    t.index ["street_id"], name: "index_communes_on_street_id", using: :btree
  end

  create_table "intercommunalities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "siren"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "form"
    t.index ["siren"], name: "index_intercommunalities_on_siren", unique: true, using: :btree
  end

  create_table "streets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "commune_id"
    t.index ["commune_id"], name: "index_streets_on_commune_id", using: :btree
  end

end
