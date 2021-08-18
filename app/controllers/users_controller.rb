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

   def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
   end

   def edit
    @user = User.find(params[:id])
   end

   def update
    @user = User.find(params[:id])
     if@user.update(user_params)
       flash[:notice] = "successfully"
       redirect_to user_path(@user.id)
     else
      render :edit
     end
   end

   def user_params
     params.require(:user).permit(:name, :profile_image, :introduction)
   end
end
