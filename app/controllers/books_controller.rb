class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])

    @bookphotos = BookPhoto.all
    book_id = @book.id
    @bookphoto = @bookphotos.find(book_id)
    
    @user = current_user
    @recommendations = Recommendation.all
    @recommendation = @recommendations.new
  end
end
