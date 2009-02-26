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

ActiveRecord::Schema.define(:version => 20090226070010) do

  create_table "hotels", :force => true do |t|
    t.string   "name"
    t.integer  "units"
    t.string   "website"
    t.text     "large_description"
    t.text     "small_description"
    t.text     "tiny_description"
    t.text     "units_description"
    t.string   "address1"
    t.string   "address2"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.boolean  "swimming_pool"
    t.boolean  "swim_up_bar"
    t.boolean  "steam_room"
    t.boolean  "fullservice_health_spa"
    t.boolean  "complimentary_newspapers_in_lobby"
    t.boolean  "fitness_equipment"
    t.boolean  "bar_lounge"
    t.boolean  "room_service_24_hours"
    t.boolean  "self_parking"
    t.boolean  "conference_rooms"
    t.boolean  "exhibit_space"
    t.boolean  "banquet_facilities"
    t.boolean  "internet_access_in_public_areas"
    t.boolean  "business_services"
    t.boolean  "porter_bellhop"
    t.boolean  "security_guard"
    t.boolean  "multilingual_staff"
    t.boolean  "gift_shops_or_newsstand"
    t.boolean  "tour_assistance"
    t.boolean  "beauty_services"
    t.boolean  "grocery"
    t.boolean  "air_conditioned_public_areas"
    t.boolean  "supervised_child_care_activities"
    t.boolean  "poolside_bar"
    t.boolean  "spa_tub"
    t.boolean  "sauna"
    t.boolean  "concierge_desk"
    t.boolean  "health_club"
    t.boolean  "restaurant_in_hotel"
    t.boolean  "nightclub"
    t.boolean  "parking_free"
    t.boolean  "event_catering"
    t.boolean  "parking_valet"
    t.boolean  "business_center"
    t.boolean  "ballroom"
    t.boolean  "meeting_rooms_large"
    t.boolean  "meeting_rooms_small"
    t.boolean  "audio_visual_equipment"
    t.boolean  "doorman"
    t.boolean  "hair_salon"
    t.boolean  "shopping_on_site"
    t.boolean  "medical_assistance_available"
    t.boolean  "dry_cleaning_service"
    t.boolean  "pool_table_on_site"
    t.boolean  "elevator_lift"
    t.boolean  "wedding_services"
    t.boolean  "front_desk_24_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.integer  "hotel_id"
    t.integer  "parent_id"
    t.integer  "size"
    t.integer  "width"
    t.integer  "height"
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
