class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @paintings = Painting.all
  end

  def show
    @painting = Painting.find(params[:id])
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    if @painting.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting_to_update = Paint.find(params[:id])
    @painting_to_update.update(painting_params)
    @painting_to_update.save
  end

  def destroy
    @painting_to_destroy = Painting.find(params[:id])
    @painting_to_destroy.destroy
    redirect_to :paintings_path
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :description, :photo )
  end

end
