class OffersController < ApplicationController

  def new
    offer = Offer.new
    customer = current_customer
    @product = Product.find(params[:id])
  end

  def create
    @customer = current_customer
    @product = Product.find(params[:id])
    @offer = Offer.new(offer_params)
    if @offer.save
      @offer[:suggested_price] = @offer.suggested_price
      redirect_to product_offer_path(:id => @product.id)
    else
      redirect_to products_new_offer_path(:id => @product.id)
    end  
  end

  private
  def offer_params
    params.require(:offer).permit(:suggested_price).merge(customer_id: current_customer.id, product_id: @product.id)
  end
end
