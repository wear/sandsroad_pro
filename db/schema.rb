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

ActiveRecord::Schema.define(:version => 20091203114849) do

  create_table :cashiers do |t| 
    t.string   "category"
    t.string   "reason"
    t.text     "desc"
    t.integer  "user_id"
    t.date     "pay_date"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.timestamps
  end            
  add_index "cashiers", ["user_id"], :name => "index_cashiers_on_user_id"  
  
  create_table :bills do |t|
    t.string   "category"
    t.string   "reason"
    t.text     "desc"
    t.integer  "user_id"
    t.date     "pay_date"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.timestamps
  end
  
  create_table "users", :force => true do |t|
    t.column :login,                     :string, :limit => 40
    t.column :name,                      :string, :limit => 100, :default => '', :null => true
    t.column :email,                     :string, :limit => 100
    t.column :crypted_password,          :string, :limit => 40
    t.column :salt,                      :string, :limit => 40
    t.column :created_at,                :datetime
    t.column :updated_at,                :datetime
    t.column :remember_token,            :string, :limit => 40
    t.column :remember_token_expires_at, :datetime


  end
  add_index :users, :login, :unique => true

end
