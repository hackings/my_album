class AlbumsController < ApplicationController
  def index
  end

  def new
    @album = Album.new
  end  

  def show
    @album = Album.find params[:id]
  end 

  def edit
    @album = Album.find params[:id]
  end 

  def update
    @album = Album.find params[:id]
    if @album.update_attributes params[:album]
      redirect_to albums_path(@album)
    else
      render :action => :edit
    end  
  end  

end
