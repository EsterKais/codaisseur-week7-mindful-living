class BooksController < ApplicationController

  def index
    @books = Book.all
    @books = Book.search (params[:search]) unless params[:search].blank?

    @bookphotos = BookPhoto.all
  end

  def show
    @book = Book.find(params[:id])

    @bookphotos = BookPhoto.all
    book_id = @book.id
    @bookphoto = @bookphotos.find(book_id)

    @user = current_user
    @recommendations = Recommendation.all
    @recommendation = @recommendations.new

    @users = User.all
  end

  def by_book_name
    @books = Book.by_book_name
    @bookphotos = BookPhoto.all

    render action: :index
  end

  def by_latest
    @books = Book.by_latest
    @bookphotos = BookPhoto.all

    render action: :index
  end
end
