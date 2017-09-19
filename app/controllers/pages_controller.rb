class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :blog]

  def home
    @album = Album.all.sample
  end

  def about
  end

  def blog
  end

end



