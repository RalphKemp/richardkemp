class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @album = Album.find(params[:id])
    @painting = Painting.new(painting_params)
    @painting.album = @album
    if @painting.save
      flash[:notice] = "Successfully created painting."
      redirect_to album_path(@album)
    else
      render 'new'
    end
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update_attributes(painting_params)
      flash[:notice] = "Successfully updated painting."
      redirect_to @painting.album
    else
      render 'new'
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    flash[:notice] = "Successfully destroyed painting."
    redirect_to @painting.gallery
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :description, :album_id, :photo, :photo_cache)
  end

end
