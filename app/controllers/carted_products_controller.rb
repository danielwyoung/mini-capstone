class CartedProductsController < ApplicationController
  def create
    CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
      )
    @carted_product = CartedProduct.all
    flash[:success] = "You successfully added the item(s) to your cart!"
    redirect_to "/products"
  end

  def index
    @carted_products = CartedProduct.where("status = ? AND user_id = ?", "carted", current_user.id)
    if @carted_products.length == 0 
      flash[:fail] = "You don't have anything in your cart yet"
      redirect_to '/products'
    end
  end
  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")
    flash[:success] ="Product successfully removed"
    redirect_to "/carted_products"
  end
end
