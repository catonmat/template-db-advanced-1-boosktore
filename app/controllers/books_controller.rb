class BooksController < ApplicationController
  def index
    @books = Book.includes(:author)
    # @books = Book.all
  end

  def eager_loading
    @version = 'Eager Loading (No N+1 problem present)'
    @code = "@books = Book.includes(author: [:publishers]) # publishers belongs to authors; we are including two extra tables."

    @books = Book.includes(author: [:publishers])

    render :index
  end

  def lazy_loading
    @version = 'Lazy Loading (N+1 problem present)'
    @code = "@books = Book.all # We do not include authors or publishers; instead, in the view we iterate through all 500 books and make 500+ more queries to authors and publishers." 

    @books = Book.all

    render :index
  end
end
