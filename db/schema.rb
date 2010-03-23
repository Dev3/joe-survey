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

ActiveRecord::Schema.define(:version => 20100308160716) do

  create_table "answers", :force => true do |t|
    t.integer  "reply_id"
    t.integer  "question_id"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "bdrb_job_queues", :force => true do |t|
    t.text     "args"
    t.string   "worker_name"
    t.string   "worker_method"
    t.string   "job_key"
    t.integer  "taken"
    t.integer  "finished"
    t.integer  "timeout"
    t.integer  "priority"
    t.datetime "submitted_at"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "archived_at"
    t.string   "tag"
    t.string   "submitter_info"
    t.string   "runner_info"
    t.string   "worker_key"
    t.datetime "scheduled_at"
  end

  create_table "black_listings", :force => true do |t|
    t.string   "email"
    t.string   "device"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "black_listings", ["device"], :name => "index_black_listings_on_device"
  add_index "black_listings", ["email"], :name => "index_black_listings_on_email"

  create_table "disabilities", :force => true do |t|
    t.string   "current_iphone_version"
    t.string   "older_iphone_version"
    t.text     "warning"
    t.boolean  "active",                 :default => true
    t.integer  "added_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "name"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country",       :default => "AMERRRRICA! FUCK YYEEAAH!"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintenances", :force => true do |t|
    t.datetime "start"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "passed",     :default => false
    t.datetime "end"
  end

  create_table "nonprofit_orgs", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "city1",             :limit => 100
    t.string   "state1",            :limit => 100
    t.string   "zipcode1",          :limit => 100
    t.string   "address2"
    t.string   "city2",             :limit => 100
    t.string   "state2",            :limit => 100
    t.string   "zipcode2",          :limit => 100
    t.string   "phone",             :limit => 100
    t.string   "email",             :limit => 100
    t.string   "tax_status",        :limit => 100
    t.integer  "tax_id"
    t.string   "contact_name"
    t.string   "contact_phone",     :limit => 100
    t.string   "website"
    t.text     "description"
    t.text     "notes"
    t.boolean  "active",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "nonprofit_orgs_earnings", :force => true do |t|
    t.integer  "nonprofit_org_id"
    t.integer  "survey_id"
    t.integer  "user_id"
    t.float    "amount_earned",          :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "amount_donated_by_user", :default => 0.0, :null => false
  end

  create_table "package_lifetimes", :force => true do |t|
    t.integer  "package_id"
    t.boolean  "cancelled"
    t.integer  "total_uses"
    t.date     "valid_from"
    t.date     "valid_until"
    t.integer  "validity_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "package_pricings", :force => true do |t|
    t.integer  "package_id"
    t.integer  "package_question_type_id"
    t.integer  "total_questions"
    t.float    "standard_price"
    t.float    "normal_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "package_question_types", :force => true do |t|
    t.string   "name"
    t.string   "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "base_cost"
    t.integer  "total_responses"
  end

  create_table "payments", :force => true do |t|
    t.float    "amount"
    t.integer  "survey_id"
    t.string   "payer_id"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "transaction_id"
    t.integer  "owner_id"
    t.string   "status",         :default => "incomplete"
  end

  create_table "payouts", :force => true do |t|
    t.integer  "package_id"
    t.integer  "package_question_type_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "field_type"
    t.integer  "package_question_type_id"
  end

  create_table "questions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "survey_id"
    t.string   "name"
    t.integer  "question_type_id"
    t.text     "complement"
    t.string   "description"
  end

  create_table "refunds", :force => true do |t|
    t.integer  "survey_id"
    t.integer  "owner_id"
    t.float    "amount"
    t.string   "refund_transaction_id"
    t.text     "paypal_response"
    t.boolean  "complete"
    t.string   "error_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "replies", :force => true do |t|
    t.integer  "survey_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",       :default => "incomplete"
    t.datetime "completed_at"
  end

  create_table "restrictions", :force => true do |t|
    t.integer  "survey_id"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "survey_packages", :force => true do |t|
    t.integer "survey_id"
    t.string  "name"
    t.string  "code"
    t.float   "base_cost"
    t.integer "total_responses"
  end

  create_table "survey_payouts", :force => true do |t|
    t.integer  "survey_id"
    t.integer  "payout_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_pricings", :force => true do |t|
    t.integer  "survey_id"
    t.integer  "package_pricing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
    t.string   "payment_status"
    t.date     "end_at"
    t.integer  "responses"
    t.datetime "published_at"
    t.string   "publish_status",                :default => "pending"
    t.string   "reject_reason"
    t.integer  "package_id"
    t.float    "chargeable_amount"
    t.text     "description"
    t.datetime "finished_at"
    t.float    "reward_amount"
    t.boolean  "physical_location_restriction", :default => false
  end

  create_table "temp_uploads", :force => true do |t|
    t.string   "org_files"
    t.string   "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "org_file_file_name"
    t.string   "org_file_content_type"
    t.integer  "org_file_file_size"
    t.datetime "org_file_updated_at"
  end

  create_table "transfers", :force => true do |t|
    t.integer  "reply_id"
    t.string   "status",        :limit => 100, :default => "pending"
    t.float    "amount"
    t.text     "paypal_params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                                      :limit => 40
    t.string   "name",                                       :limit => 100, :default => ""
    t.string   "email",                                      :limit => 100
    t.string   "crypted_password",                           :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "perishable_token"
    t.boolean  "active",                                                    :default => false
    t.string   "type",                                                      :default => "Consumer"
    t.integer  "income_id"
    t.string   "zip_code"
    t.integer  "race_id"
    t.integer  "education_id"
    t.integer  "occupation_id"
    t.integer  "martial_status_id"
    t.integer  "sort_id",                                                   :default => 1,          :null => false
    t.string   "device_id"
    t.datetime "last_warned_at"
    t.boolean  "get_geographical_location_targeted_surveys",                :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["login"], :name => "index_sams_on_login", :unique => true

  create_table "warnings", :force => true do |t|
    t.string   "iphone_version"
    t.text     "warning"
    t.string   "warn_preference"
    t.boolean  "active",          :default => true
    t.integer  "added_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
