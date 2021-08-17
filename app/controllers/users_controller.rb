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
    @user.update(user_params)
    redirect_to user_path(@user.id)
   end
   
   def user_params
     params.require(:user).permit(:name, :profile_image)
   end
end
