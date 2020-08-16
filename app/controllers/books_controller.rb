class BooksController < ApplicationController
  def index
    @books = Book.includes(:author)
    # @books = Book.all
  end
end
