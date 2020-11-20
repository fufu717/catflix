class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.order("id DESC")
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
    @user = current_user
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)

      if @movie.save
        redirect_to root_path
      else
        render :new 
      end
  end

  def destroy
    @movie.destroy
      redirect_to root_path
  end

  private
  
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :text, :cat_id, :movie).merge(user_id: current_user.id)
    end

end
