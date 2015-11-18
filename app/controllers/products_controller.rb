class ProductsController < ApplicationController
  def products
    @products = Product.first
  end

  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
    #product_id = params[:id]
    #@product = product.find_by9ud:product_id)
  end

  def new
  end

  def create
    @product = Product.create(
      name: params[:name], 
      price: params[:price], 
      image: params[:image], 
      description: params[:description], 
      size: params[:size], 
      color: params[:color]
      )
    redirect_to "/"
  end

  def edit
    @products = Product.find(params[:id])
    #@products = Product.find_by(id: params[:id])
  end

  def update
    @products = Product.find(params[:id])
    @products.update(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description], 
      size: params[:size], 
      color: params[:color]
      )
    redirect_to "/"
  end

  def destroy
    @products = Product.find(params[:id])
    @products.destroy
    redirect_to "/"
  end

end


