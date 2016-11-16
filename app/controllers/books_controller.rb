class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @user = current_user
    @recommendations = Recommendation.all
    @recommendation = @recommendations.new
  end
end
