class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
   @book = Book.new
   @books = @user.books
  end

  def index
   @book = Book.all
   @book = Book.new
   @user = current_user
   @users = User.all
  end

  def edit
  end

  def update

  end
end
