class Admin::DashboardController < Admin::BaseController

  def show
    @product_count = Product.sum(:quantity)
    @category_count = Category.count(:id)
  end
end
