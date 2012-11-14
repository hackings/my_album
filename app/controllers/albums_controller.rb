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
    redirect_to albums_path(@album)
  end  

end
