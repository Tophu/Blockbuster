class ItemsController < ApplicationController
  def create
    chosen_movie = Movie.find(params[:movie_id])
    current_basket = @current_basket

    if current_basket.movies.include?(chosen_movie)
      @item = current_basket.items.find_by(:movies_id => chosen_movie)
      @item.quantity += 1
    else
      @item = LineItem.new
      @item.basket = current_basket
      @item.movie = chosen_movie
    end

    @item.save
    redirect_to basket_path(current_basket)
  end

  def destroy
    @item = LineItem.find(params[:id])
    @item.destroy
    redirect_to basket_path(@current_basket)
  end

  private

  def item_params
    params.require(:item).permit(:quantity, :movie_id, :basket_id)
  end
end
