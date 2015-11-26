class ProductsController < ApplicationController
  def products
    @products = Product.first
  end

  def index
    @products = Product.all
    sort_attribute = params[:sort_attribute]
    sort_order = params[:sort_order]
    if sort_attribute && sort_order
      @products = Product.order(sort_attribute => sort_order)
    end
    sort = params[:sort]
    if sort
      @products = Product.where("price < ?", 4)
    end
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
      description: params[:description], 
      size: params[:size], 
      color: params[:color],
      supplier_id: params[:supplier_id]
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
      description: params[:description], 
      size: params[:size], 
      color: params[:color],
      supplier_id: params[:supplier_id]
      )
    redirect_to "/"
  end

  def destroy
    @products = Product.find(params[:id])
    @products.destroy
    redirect_to "/"
  end

end


