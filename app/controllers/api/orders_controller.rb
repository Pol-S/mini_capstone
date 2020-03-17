class Api::OrdersController < ApplicationController
  #Note that an order has the following attributes: user_id, product_id, quantity, subtotal, tax, and total. Assume the user will provide the product id and quantity in params. For now, only save the user_id, product_id, and quantity (we’ll come back to the remaining attributes in a bit).
  def create
    @order = Order.new({
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: Product.find_by(id: params[:product_id]).price,
      tax: Product.find_by(id: params[:product_id]).tax,
      total: Product.find_by(id: params[:product_id]).total,

    })
    @order.save
    render "show.json.jb"
  end
end
