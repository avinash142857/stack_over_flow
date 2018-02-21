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

ActiveRecord::Schema.define(version: 20180129163828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "question_id"
    t.text "body"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "badges", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.string "commentable_type"
    t.bigint "commentable_id"
    t.text "body"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "flags", force: :cascade do |t|
    t.bigint "user_id"
    t.string "flagable_type"
    t.bigint "flagable_id"
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flagable_type", "flagable_id"], name: "index_flags_on_flagable_type_and_flagable_id"
    t.index ["user_id"], name: "index_flags_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "body"
    t.integer "accepted_answer_id"
    t.integer "views"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "recomendations", force: :cascade do |t|
    t.bigint "question_id"
    t.integer "recomendation_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_recomendations_on_question_id"
  end

  create_table "revisions", force: :cascade do |t|
    t.string "revisionable_type"
    t.bigint "revisionable_id"
    t.integer "suggession_id"
    t.jsonb "data"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["revisionable_type", "revisionable_id"], name: "index_revisions_on_revisionable_type_and_revisionable_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "user_id"
    t.string "token"
    t.string "device_id"
    t.datetime "expire_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "suggessions", force: :cascade do |t|
    t.bigint "user_id"
    t.string "suggestible_type"
    t.integer "suggestible_id"
    t.jsonb "data"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_suggessions_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "salt"
    t.string "password_digest"
    t.integer "reputation_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_visits_on_question_id"
    t.index ["user_id"], name: "index_visits_on_user_id"
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "user_id"
    t.string "votable_type"
    t.bigint "votable_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_votes_on_user_id"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "flags", "users"
  add_foreign_key "questions", "users"
  add_foreign_key "recomendations", "questions"
  add_foreign_key "sessions", "users"
  add_foreign_key "suggessions", "users"
  add_foreign_key "visits", "questions"
  add_foreign_key "visits", "users"
  add_foreign_key "votes", "users"
end
