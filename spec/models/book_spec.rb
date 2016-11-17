require 'rails_helper'

RSpec.describe Book, type: :model do

  describe "validations" do
    it "is invalid without a book name" do
      book = Book.new(book_name: "")
      book.valid?
      expect(book.errors).to have_key(:book_name)
    end

    it "is invalid wihtout a book description" do
      book = Book.new(book_description: "")
      book.valid?
      expect(book.errors).to have_key(:book_description)
    end
  end

  describe "Book Methods" do
    let!(:book1) { create :book, book_name: "Beta", book_description: "Lorem", updated_at: "2016-11-03 03:00:00" }
    let!(:book2) { create :book, book_name: "Alpha", book_description: "Lorem", updated_at: "2016-11-01 01:00:00"}
    let!(:book3) { create :book, book_name: "Gamma", book_description: "Lorem", updated_at: "2016-11-02 02:00:00"}

    it "#order_by_book_name returns an array sorted alphabetically" do
      expect(Book.by_book_name).to match_array [book2, book1, book3]
    end

    it "#order_by_latest returns an array sorted by updated date" do
      expect(Book.by_latest).to match_array [book1, book3, book2]
    end
  end

  describe "Book Associations" do
    let!(:book) { create :book }
    let!(:book1) { create :book }
    let!(:book_photo) { create :book_photo, book: book }
    let!(:book_opinion) { create :book_opinion, book: book1}

    it "has a book_photo" do
      expect(book_photo.book).to eq(book)
    end

    it "has a book_opinion" do
      expect(book_opinion.book).to eq(book1)
    end

  end
end
