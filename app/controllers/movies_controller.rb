class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = current_movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params { :movie })

    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end

  private

  def movies_params
    # params.require(:movie).permit(:photo, :title, :description, :year, :genre)
    params.require(:movie).permit(:title)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
