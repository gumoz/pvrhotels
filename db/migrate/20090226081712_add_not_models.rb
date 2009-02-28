class AddNotModels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :hotel_plan, :string
    add_column :hotels, :hotel_stars, :string
    add_column :hotels, :best_for, :string
    add_column :hotels, :location_area, :string
    add_column :hotels, :hotel_status, :string
  end

  def self.down
    remove_column :hotels, :hotel_status
    remove_column :hotels, :location_area
    remove_column :hotels, :best_for
    remove_column :hotels, :hotel_stars
    remove_column :hotels, :hotel_plan
  end
end
