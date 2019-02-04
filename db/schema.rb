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

ActiveRecord::Schema.define(version: 2019_02_03_174015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "post_id"
    t.integer "author_id"
    t.string "author_name"
    t.string "author_email"
    t.string "author_ip"
    t.text "content"
    t.string "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_comments_on_ancestry"
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.string "autoload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "author_id"
    t.text "content"
    t.string "title"
    t.string "except"
    t.string "status"
    t.string "comment_status"
    t.string "ping_status"
    t.string "slug"
    t.integer "comment_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts_taxonomies", force: :cascade do |t|
    t.bigint "taxonomy_id"
    t.bigint "post_id"
    t.index ["post_id"], name: "index_posts_taxonomies_on_post_id"
    t.index ["taxonomy_id"], name: "index_posts_taxonomies_on_taxonomy_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "taxonomies", force: :cascade do |t|
    t.integer "term_id"
    t.string "taxonomy"
    t.text "description"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_taxonomies_on_ancestry"
  end

  create_table "terms", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "term_slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terms_taxonomies", force: :cascade do |t|
    t.integer "object_id"
    t.integer "taxonomy_id"
    t.integer "term_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
