class Photo < ActiveRecord::Base
  belongs_to :hotel
  
  has_attachment :content_type => :image,
  :storage => :file_system,
  :max_size => 5000.kilobytes,
  :resize_to => '800x600>',
  :thumbnails => {
    :thumb => '110x80>',
    :large => '600x400>',
    :medium => "670x220",
    :small => "214x134"
  }
  validates_as_attachment
end
