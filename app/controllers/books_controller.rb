class BooksController < ApplicationController
  def index
    @books = Book.includes(:author)
    # @books = Book.all
  end

  def eager_loading
    @version = 'Eager Loading (4 SQL queries)'
    @code = "@books = Book.includes(author: [:publishers]) # nested `includes`; publishers belongs to author."

    @books = Book.includes(author: [:publishers])

    render :index
  end

  def lazy_loading
    @version = 'Lazy Loading (1001 SQL queries)'
    @code = "@books = Book.all"

    @books = Book.all

    render :index
  end
end
