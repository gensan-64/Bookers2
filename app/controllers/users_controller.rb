class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
  end

  def index
   @book = Book.all
  end

  def edit
  end

  def update
   
  end
end
