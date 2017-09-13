class PaintingsController < ApplicationController

  def index
    @painting = Painting.all
  end

  def create
    @painting = Painting.new(painting_params)
    @painting.save
  end

  def show
    @painting = painting.find(params[:id])
  end

  def destroy
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :description, :photo, :photo_cache)
  end

end
