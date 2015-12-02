class CartedProductsController < ApplicationController
  def create
    CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
      )
    flash[:success] = "You successfully added some stuff to your cart!"
    redirect_to "/products"
  end

  def index
    @carted_products = CartedProduct.where("status = ?", "carted")
  end
end
