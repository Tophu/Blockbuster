class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = current_movie.find(params[:id])
  end

  private

  def movies_params
    params.require(:movie).permit(:photo, :title, :description, :year, :genre)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
