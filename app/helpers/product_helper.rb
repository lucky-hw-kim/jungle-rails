module ProductHelper
  def outofstock?(product)
    product.quantity == 0
  end
end
