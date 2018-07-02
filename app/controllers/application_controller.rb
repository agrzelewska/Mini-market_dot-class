class ApplicationController < ActionController::Base
  helper_method :current_customer
  before_action :authenticate_customer!

  def current_customer
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end

  def authenticate_customer!
    redirect_to login_path unless current_customer
  end

end
