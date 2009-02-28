class AdministratorController < ApplicationController
before_filter :login_required
def index
  @hotels = Hotel.find(:all)
  @rooms2 = Room.sum(:total_rooms)
  @rooms = Room.count
  @users = User.count
  @numhotels = Hotel.count
end

end
