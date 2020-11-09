class MoviesController < ApplicationController
  def index
<<<<<<< Updated upstream
=======
    @movies = Movie.order("id DESC")
>>>>>>> Stashed changes
  end
end
