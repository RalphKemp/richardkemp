class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    # Bootsy::ImageGallery.new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      else
        respond_to do |format|
          format.html { render 'posts' }
          format.js  # <-- idem
        end
      end
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post_to_update = Post.find(params[:id])
    post_to_update.update(post_params)
    redirect_to post_path(post_to_update)
  end

  def destroy
    post_to_destroy = Post.find(params[:id])
    post_to_destroy.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category_id, :bootsy_image_gallery_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
