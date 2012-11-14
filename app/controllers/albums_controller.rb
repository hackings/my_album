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
  end  

end
