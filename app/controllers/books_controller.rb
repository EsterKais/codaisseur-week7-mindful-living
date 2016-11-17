class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @user = current_user
    @recommendations = Recommendation.all
    @recommendation = @recommendations.new
  end
end
