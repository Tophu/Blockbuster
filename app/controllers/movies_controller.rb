class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movies_path
  end

  def destroy
    @movie = Movie.find(params[:id])
    @Movie.destroy
    redirect_to movies_path
  end

  private

  def movies_params
    params.require(:movie).permit(:title)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
