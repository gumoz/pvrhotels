class Room < ActiveRecord::Base
  validates_presence_of :room_name, :regular_rate_usd, :on => :create, :message => "can't be blank"
  validates_numericality_of :min_sleep, :max_sleep, :total_rooms, :regular_rate_usd, :on => :create, :message => "is not a number"
  
  belongs_to :hotel
end