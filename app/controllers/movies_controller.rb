class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user_id = current_user.id
    @movie.save
    redirect_to @movie
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
      @movie = Movie.find(params[:id])
      @movie.destroy
      redirect_to movies_path
  end
   
  private

  def movie_params
    params.require(:movie).permit(:title,:introduction,:movie)
  end
end
