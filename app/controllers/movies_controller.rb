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
    @movie = Movie.new(movies_params)
    if @movie.save!
      redirect_to index_path(@Movie.all)
    end
  end
end
