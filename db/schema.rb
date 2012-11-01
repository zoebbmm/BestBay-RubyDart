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

ActiveRecord::Schema.define(:version => 20121031154938) do

  create_table "bids", :force => true do |t|
    t.datetime "bidding_time"
    t.float    "bidding_price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
    t.integer  "product_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["created_at"], :name => "index_categories_on_product_id_and_created_at"

  create_table "products", :force => true do |t|
    t.string   "title"
    t.float    "start_price"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "time_left"
    t.float    "current_price"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.string   "user_name"
    t.integer  "category_id"
  end

  create_table "products_users", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "user_id"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'array' for column 'selling_products'

end
