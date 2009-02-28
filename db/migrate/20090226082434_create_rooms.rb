class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.references :hotel
      t.string :room_name
      t.integer :min_sleep
      t.integer :max_sleep
      t.decimal :regular_rate_usd
      t.integer :max_adults
      t.integer :max_children
      t.text :room_description
      t.string :room_type
      t.integer :total_rooms
      t.boolean :double
      t.boolean :king
      t.boolean :murphy
      t.boolean :queen
      t.boolean :rollaway
      t.boolean :sofa
      t.boolean :twin
      

      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
