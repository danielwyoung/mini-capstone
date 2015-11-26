class OrdersController < ApplicationController

  def create
    order = Order.create(
      user_id: current_user.id, 
      quantity: params[:quantity], 
      )
    redirect_to "/orders/#{order.id}"
  end

  def show
    #@order = Order.find_by[id: order_id]
    @order = Order.find(params[:id])
  end
end
