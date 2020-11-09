class UsersController < ApplicationController
<<<<<<< Updated upstream
  def edit
    @user = User.find(params[:id])
=======
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @movies = user.movies 
>>>>>>> Stashed changes
  end
end
