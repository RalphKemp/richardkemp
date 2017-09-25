class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :blog]

  def home
    shuffled_albums = Album.all.shuffle
    @album = shuffled_albums.sample
  end

  def about
  end

  def blog
  end
end



