class FavoritesController < ApplicationController

  def index
    @favorites = User.first.favorites
  end

  def create
    user = User.first
    favorite = params[:favorite]
    user.favorites.find_or_create_by(link: favorite)
    redirect_to favorites_path
  end

end
