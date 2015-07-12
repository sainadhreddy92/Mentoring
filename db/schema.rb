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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150629212029) do

  create_table "current_mentees", force: :cascade do |t|
    t.string "mentor_id"
    t.string "are_of_interest"
    t.text   "notes"
  end

  create_table "current_mentors", force: :cascade do |t|
    t.string "mentee_id"
    t.string "are_of_interest"
    t.text   "notes"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "problem"
    t.string   "goal_status"
    t.string   "suggest_status"
    t.string   "support_status"
    t.text     "suggestions"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  add_index "feedbacks", ["user_id"], name: "index_feedbacks_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string  "user_role"
    t.string  "cec_id"
    t.string  "current_group"
    t.string  "work_city"
    t.string  "job_role"
    t.boolean "conflict_resolution"
    t.boolean "customer_know_how"
    t.boolean "personal_branding"
    t.boolean "leading_change"
    t.boolean "exec_acheive_results"
    t.boolean "align_and_influence"
    t.boolean "managing_without_authority"
    t.boolean "career_exploration"
    t.boolean "win_win_negotiation"
    t.boolean "effective_communication"
    t.boolean "think_out_box"
    t.boolean "tech_know"
    t.boolean "other"
    t.string  "tech_areas"
    t.string  "other_areas"
    t.string  "password_digest"
  end

end
