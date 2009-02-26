class PhotosController < ApplicationController
  def create
    @hotel = Hotel.find(params[:hotel_id])
    @photo = Photo.new(params[:photo])
    
    if @photo.save
      @hotel.photos << @photo
      flash[:notice] = "Photo added."
      redirect_to hotel_url(@hotel)
    else
      flash[:notice] = "Maximum picture size is 5 Mb"
      redirect_to hotel_url(@hotel)
    end    
  end
  
  def destroy
    _find_album
    @photo = @album.photos.find(params[:id])
    @photo.destroy
    flash[:notice] = "La foto fue borrado exitosamente."
    redirect_to hotel_url(@hotel)
  end
  
  def _find_album
    @album = Hotel.find(params[:hotel_id])
  end
end
