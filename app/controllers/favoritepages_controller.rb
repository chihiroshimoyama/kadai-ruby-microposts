class FavoritepagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @favorites = current_user.feed_favorites.all
    end
  end
end
