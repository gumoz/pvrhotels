class AddDefaultUsers < ActiveRecord::Migration
  def self.up
    if !User.find_by_login('superadmin')
      User.create(:login => 'superadmin', :email => "ismael@tresfiles.com.mx", 
                  :password => "tresfilesadmin", :password_confirmation => "tresfilesadmin")
    end
    if !User.find_by_login('admin')
      User.create(:login => 'admin', :email => "mail@falso.com", 
                  :password => "superadministrator", :password_confirmation => "superadministrator")
    end
  end

  def self.down
  end
end
