class DashboardsController < ApplicationController
  skip_before_action :authenticate_customer!
  def show
  end
end
