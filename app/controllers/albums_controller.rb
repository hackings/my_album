class AlbumsController < ApplicationController

  before_filter :get_album, :except => [ :index, :new ]

  def index
  end

  def new
    @album = Album.new
  end  

  def show
  end 

  def edit
  end 

  def update
    if @album.update_attributes params[:album]
      redirect_to album_path(@album)
    else
      render :action => :edit
    end  
  end  

private
  def get_album
    @album = Album.find params[:id]
  end  

end
