class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :blog]

  def home
  end

  def about
  end

  def blog
  end

end
