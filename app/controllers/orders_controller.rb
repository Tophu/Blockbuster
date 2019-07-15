class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @current_basket.items.each do |i|
      @order.items << i
      i.basket_id = nil
    end
    @order.save
    basket.destroy(session[:basket_id])
    session[:basket_id] = nil
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit(:name, :email, :address, :payment)
  end
end
