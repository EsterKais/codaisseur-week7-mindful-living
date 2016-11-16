class PagesController < ApplicationController
  def home
    @books = Book.all
    @courses = Course.all
    @retreats = Retreat.all
  end
end
