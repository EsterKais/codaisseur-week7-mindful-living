require 'rails_helper'

RSpec.describe BookOpinion, type: :model do
  describe "validations" do
    it "is invalid without a book_opinion name" do
      book_opinion = BookOpinion.new(book_opinion_name: "")
      book_opinion.valid?
      expect(book_opinion.errors).to have_key(:book_opinion_name)
    end

    it "is invalid without a book_opinion title" do
      book_opinion = BookOpinion.new(book_opinion_title: "")
      book_opinion.valid?
      expect(book_opinion.errors).to have_key(:book_opinion_title)
    end

    it "is invalid wihtout a book_opinion description" do
      book_opinion = BookOpinion.new(book_opinion_text: "")
      book_opinion.valid?
      expect(book_opinion.errors).to have_key(:book_opinion_text)
    end
  end
end
