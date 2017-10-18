class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
     @album = Album.new
     @album_paintings = @album.album_paintings.build
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      params[:album_paintings]['photo'].each do |p|
        @album.album_paintings.create!(photo: p)
      end
      redirect_to album_path(@album)
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    album_to_update = Album.find(params[:id])
    album_to_update.update(album_params)
    redirect_to album_path(album_to_update)
  end

  def destroy
    album_to_delete = Album.find(params[:id])
    album_to_delete.destroy
    redirect_to albums_path
  end

  private

  def album_params
    params.require(:album).permit(:name, :description, album_paintings: [:name, :description, :album_id, :photo])
  end
end
