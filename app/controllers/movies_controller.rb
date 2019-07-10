class MoviesController < ApplicationController

  # def initialize
  #   @movies = movies
  # end

  def index
    @movies = Movie.all
  end

  def show
    @movie = current_movie.find(params[:id])
  end
end
