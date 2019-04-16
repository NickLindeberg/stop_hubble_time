class FavoritesController < ApplicationController

  def index
    @favorites = User.first.favorites
  end

  def create
    user = User.first
    favorite = params[:favorite]
    user.favorites.create(link: favorite)
    redirect_to favorites_path
  end

end
