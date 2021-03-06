class BasketsController < ApplicationController
  def show
    @basket = @current_basket
  end

  def destroy
    @basket = @current_basket
    @basket.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end
end
