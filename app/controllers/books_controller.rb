class BooksController < ApplicationController

  def create
    @book = Book.new
    @book.save
    redirect_to books_path
  end

  def index
  end

  def show
  end

  def destroy
  end
end
