class OffersController < ApplicationController

  def new
    @offer = Offer.new
    @product = Product.find(params[:id])
  end

  def create
    customer = current_customer
    product = Product.find(offer_params[:product_id])
    offer = Offer.new(offer_params.merge(customer_id: current_customer.id, product_id: product.id))
    if offer.save
      redirect_to product_path(product)
    else
      redirect_to new_offer_path(product)
    end  
  end

  private
  def offer_params
    params.require(:offer).permit(:suggested_price, :product_id)
  end
end
