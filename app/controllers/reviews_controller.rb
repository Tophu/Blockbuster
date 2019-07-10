class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.movie_id = @movie.id

    if @review.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params { :review })

    redirect_to movie_path(@movie)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to movie_path(@movie)
  end

private

  # Use callbacks to share common setup or constraints between actions.
  # def set_review
  #   @review = Review.find(params[:id])
  # end

  # def set_movie
  #   @movie = Movie.find(params[:movie_id])
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  def review_params
    params.require(:review).permit(:rating)
  end
end
