module WishlistHelper

  def add_item
    id = params[:id]
  # if wishlist has already been created, use the existing Cart
      if session[:wishlist] then
        @wishlist = session[:wishlist]
      else
        session[:wishlist] = {}
        @wishlist = session[:wishlist]
      end

      # if the product has already been added to the wishlist, add another one
      if @wishlist[id] then
        @wishlist[id] = @wishlist[id] + 1
      else
        @wishlist[id] = 1
      end

  end

end
