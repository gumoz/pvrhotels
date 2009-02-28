class Hotel < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  has_many :rooms, :dependent => :destroy
  
  validates_uniqueness_of :name, :on => :create, :message => "there is a hotel already with that name"
  validates_presence_of :name, :address1, :on => :create, :message => "can't be blank"
  
  named_scope :one_start, :conditions => ["hotel_stars LIKE ?", 'One Star'], :order => :name
  named_scope :two_stars, :conditions => ["hotel_stars LIKE ?", 'Two Stars'], :order => :name
  named_scope :tree_stars, :conditions => ["hotel_stars LIKE ?", 'Tree Stars'], :order => :name
  named_scope :four_stars, :conditions => ["hotel_stars LIKE ?", 'Four Stars'], :order => :name
  named_scope :five_stars, :conditions => ["hotel_stars LIKE ?", 'Five Stars'], :order => :name
  
  def self.filter_hotel_stars(filter)
    case filter
    when 'One Star' then one_start.all
    when 'Two Stars' then two_stars.all
    when 'Tree Stars' then tree_stars.all
    when 'Four Stars' then four_stars.all
    when 'Five Stars' then five_stars.all
      
    else all
    end
  end
end
