class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
     @album = Album.new(album_params)
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_path(@album)
    else
      render :new
    end
  end

  def destroy
    album_to_delete = Album.find(params[:id])
    album_to_delete.destroy
    redirect_to albums_path
  end

  private

  def album_params
    params.require(:album).permit(:name, photos: [])
  end
end

