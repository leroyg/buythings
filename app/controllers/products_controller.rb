class ProductsController < ApplicationController
  def new
  end


  def index
        @products = Product.all
  end


  def show
    @product = Product.find params[:id]
    @cart = Cart.find_by id: session[:cart_id]
  end
end
