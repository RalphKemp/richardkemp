class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :description, :photo, :photo_cache)
  end

end
