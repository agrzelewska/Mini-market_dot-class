class ProductsController < ApplicationController
  
  def index
    @products = Product.order(:name)
  end

  def show
    @product = Product.find(params[:id])
    @customer = current_customer
    @offers = @product.offers
  end

end
