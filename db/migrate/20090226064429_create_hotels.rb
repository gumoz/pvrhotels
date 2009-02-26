class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
      t.string :name
      t.integer :units
      t.string :website
      t.text :large_description
      t.text :small_description
      t.text :tiny_description
      t.text :units_description
      t.string :address1
      t.string :address2
      t.decimal :latitude
      t.decimal :longitude
      t.boolean :swimming_pool
      t.boolean :swim_up_bar
      t.boolean :steam_room
      t.boolean :fullservice_health_spa
      t.boolean :complimentary_newspapers_in_lobby
      t.boolean :fitness_equipment
      t.boolean :bar_lounge
      t.boolean :room_service_24_hours
      t.boolean :self_parking
      t.boolean :conference_rooms
      t.boolean :exhibit_space
      t.boolean :banquet_facilities
      t.boolean :internet_access_in_public_areas
      t.boolean :business_services
      t.boolean :porter_bellhop
      t.boolean :security_guard
      t.boolean :multilingual_staff
      t.boolean :gift_shops_or_newsstand
      t.boolean :tour_assistance
      t.boolean :beauty_services
      t.boolean :grocery
      t.boolean :air_conditioned_public_areas
      t.boolean :supervised_child_care_activities
      t.boolean :poolside_bar
      t.boolean :spa_tub
      t.boolean :sauna
      t.boolean :concierge_desk
      t.boolean :health_club
      t.boolean :restaurant_in_hotel
      t.boolean :nightclub
      t.boolean :parking_free
      t.boolean :event_catering
      t.boolean :parking_valet
      t.boolean :business_center
      t.boolean :ballroom
      t.boolean :steam_room
      t.boolean :meeting_rooms_large
      t.boolean :meeting_rooms_small
      t.boolean :audio_visual_equipment
      t.boolean :doorman
      t.boolean :hair_salon
      t.boolean :shopping_on_site
      t.boolean :medical_assistance_available
      t.boolean :dry_cleaning_service
      t.boolean :pool_table_on_site
      t.boolean :elevator_lift
      t.boolean :wedding_services
      t.boolean :front_desk_24_hours
      t.timestamps
    end
  end

  def self.down
    drop_table :hotels
  end
end
