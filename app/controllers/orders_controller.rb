class OrdersController < ApplicationController
  def initialize
  end

  def index
    @orders = Order.all
  end

  def show
    @order = current_order.find(params[:id])
  end

  def new
    @orders = Order.new
  end

  def edit
  end

  def destroy
  end
end
