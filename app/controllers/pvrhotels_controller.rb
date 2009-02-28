class PvrhotelsController < ApplicationController
  def index
    @hotels = Hotel.find(:all, "Active")
    #@hotels =  Hotel.filtro_tierracero(params[:filter]).paginate :per_page => 10, :page => params[:page]
  end

  def show
    @hotel = Hotel.find(params[:id])
  end
  
  def find
     @Hotels = Hotel.find(:all, :conditions => ["name LIKE ?", '%' + params[:hotel] + '%']).paginate :per_page => 10, :page => params[:page]
   end

end
