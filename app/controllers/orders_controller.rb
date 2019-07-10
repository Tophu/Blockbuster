class OrdersController < ApplicationController
  def initialize
  end

  def index
    @orders = Order.all
  end

  def show
    @orders = Order.all
    @order = current_order.find(params[:id])
  end

  def new
    @orders = Order.new
  end
end
