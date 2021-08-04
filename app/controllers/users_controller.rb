class UsersController < ApplicationController

  def index
      @users = User.all
  end

  def show
      @user = User.find(params[:id])
      @movies = @user.movies
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    redirect_to(user_path(@user))
  end
  
  private
  
  def users_params
      params.require(:user).permit(:profile_image,:introduction,:name)
  end

end
