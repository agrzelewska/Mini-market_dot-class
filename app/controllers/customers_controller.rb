class CustomersController < ApplicationController
  skip_before_action :authenticate_customer!, only: [:new, :create]
  
  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.new(customer_params)
    if customer.save
      session[:customer_id] = customer.id
      redirect_to customer
    else
      redirect_to '/signup'
    end
  end

  def show
    @customer = current_customer
    @offers = @customer.offers
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :email, :password)
  end
end
