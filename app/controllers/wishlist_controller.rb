class WishlistController < ApplicationController
include WishlistHelper

  def index
    id = params[:id]

    if session[:wishlist]
      @wishlist = session[:wishlist]
    else
      @wishlist = {}
    end
  end

  def add
    add_item
    render "wishlist/index"
  end

  def clearWishlist
    session[:wishlist] = nil
    redirect_to :action => :index
  end
end
