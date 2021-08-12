class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
    @user = current_user
    @book = Book.new

  end

  def show
    @book = book_path
  end

  def edit
   @book = Book.new
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
end
