class FavoritesController < ApplicationController

  def index
    @favorites = User.first.favorites
  end

end
