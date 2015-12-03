class OrdersController < ApplicationController

  def create
    subtotal = 0
    @carted_products = CartedProduct.where("status = ? AND user_id = ?", "carted", current_user.id)
    @carted_products.each do |item|
      subtotal += (item.product.price.to_i * item.quantity)
    end

    tax = subtotal * 0.09
    total = subtotal + tax

    @dsubtotal = subtotal
    @dtax = tax
    @dtotal = total

    order = Order.create(
      user_id: current_user.id,  
      subtotal: subtotal, 
      tax: tax, 
      total: total
      )

    @carted_products.each do |item|
      item.update(status: 'Purchased', order_id: order.id)
    end
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
