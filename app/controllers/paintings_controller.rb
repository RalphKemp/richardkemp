class PaintingsController < ApplicationController
  before_action :set_album

  def index
    @paintings = @album.paintings.all
  end

  def new
    @painting = @album.paintings.new
  end

   def show
    @painting = @album.paintings.find(params[:id])
  end

  def create
    @painting = @album.paintings.new(painting_params)
    @painting.album = @album
    respond_to do |format|
      if @painting.save
        format.html { redirect_to album_paintings_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      else
        respond_to do |format|
          format.html { render 'new' }
          format.js  # <-- idem
        end
      end
    end
  end

  def edit
    @painting = @album.paintings.find(params[:id])
  end

  def update
    @painting = @album.paintings.find(params[:id])
    if @painting.update(painting_params)
      flash[:notice] = "Successfully updated painting."
      redirect_to @album
    else
      render 'new'
    end
  end

  def destroy
    @painting = @album.paintings.find(params[:id])
    @painting.destroy
    flash[:notice] = "Successfully destroyed painting."
    redirect_to @album
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :description, :album_id, :photo, :photo_cache)
  end

  def set_album
    @album = Album.find(params[:album_id])
  end

end
