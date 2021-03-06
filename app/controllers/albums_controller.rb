class AlbumsController < ApplicationController

  before_filter :get_album, :except => [ :index, :new ]

  def index
    @albums = Album.where(" name LIKE '%#{params[:search]}%'")
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

  def destroy
    if @album.destroy
      flash[:notice] = 'Album removed successfully.'
    end  
    redirect_to albums_path
  end  

private
  def get_album
    @album = Album.find params[:id]
  end  

end
