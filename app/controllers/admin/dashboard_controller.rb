class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"], password: ENV["ADMIN_PASSWORD"]

  def show
    @product_count = Product.sum(:quantity)
    @category_count = Product.count(:id)
  end
end
