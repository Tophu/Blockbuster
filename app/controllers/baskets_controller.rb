class BasketsController < ApplicationController
  def show
    @basket = @current_basket
  end

  def destroy
    @basket = @current_basket
    @basket.destroy
    redirect_to movies_path
  end
end
