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

ActiveRecord::Schema.define(:version => 20131114230946) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.time     "date_birth"
    t.boolean  "admin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "captchas", :force => true do |t|
    t.string   "photo"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "channels", :force => true do |t|
    t.integer  "account_id"
    t.string   "photo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.integer  "likes"
    t.integer  "dislikes"
    t.integer  "video_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "playlists", :force => true do |t|
    t.string   "name"
    t.integer  "channel_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relateds", :force => true do |t|
    t.integer  "video_id"
    t.integer  "related_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.boolean  "privacy"
    t.text     "description"
    t.string   "title"
    t.string   "category"
    t.integer  "age"
    t.boolean  "has_comments"
    t.integer  "likes"
    t.integer  "dislikes"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.boolean  "featured"
    t.string   "path"
    t.integer  "playlist_id"
    t.string   "image_path"
  end

end
