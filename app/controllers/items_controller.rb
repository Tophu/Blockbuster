class ItemsController < ApplicationController
  def create
    chosen_movie = Movie.find(params[:movie_id])
    current_basket = @current_basket

    if current_basket.orders.include?(chosen_movie)
      @item = current_basket.items.find_by(:movies_id => chosen_movie)
      @item.quantity += 1
    else
      @item = Item.new
      @item.basket = current_basket
      @item.movie = chosen_movie
    end

    @item.save
    redirect_to movies_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to basket_path(@current_basket)
  end

  private

  def item_params
    params.require(:item).permit(:quantity, :movie_id, :basket_id)
  end
end
