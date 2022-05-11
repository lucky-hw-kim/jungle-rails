class ReceiptMailer < ApplicationMailer
  def receipt_email
    @order = Order.find(params[:id])
    @line_items = LineItem.where(order_id: @order.id)
    mail(to: @order.email, subject: 'Jungle Purchase Receipt')
  end
end
