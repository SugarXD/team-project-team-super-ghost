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

ActiveRecord::Schema.define(version: 20170502030240) do

  create_table "comment_votes", force: :cascade do |t|
    t.integer  "comment_id"
    t.integer  "user_id"
    t.boolean  "is_upvote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comment_votes", ["comment_id"], name: "index_comment_votes_on_comment_id"
  add_index "comment_votes", ["user_id"], name: "index_comment_votes_on_user_id"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "courses", ["user_id"], name: "index_courses_on_user_id"

  create_table "courses_users", id: false, force: :cascade do |t|
    t.integer "user_id",   null: false
    t.integer "course_id", null: false
  end

  create_table "post_votes", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.boolean  "is_upvote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "post_votes", ["post_id"], name: "index_post_votes_on_post_id"
  add_index "post_votes", ["user_id"], name: "index_post_votes_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
    t.integer  "user_id"
  end

  add_index "posts", ["course_id"], name: "index_posts_on_course_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "uploads", force: :cascade do |t|
    t.text     "filename"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "uploads", ["user_id"], name: "index_uploads_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "role"
  end

end
