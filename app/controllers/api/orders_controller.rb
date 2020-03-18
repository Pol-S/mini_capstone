class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      @all_orders = Order.all
      render "index.json.jb"
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    @order = Order.new(

      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: Product.find_by(id: params[:product_id]).price * params[:quantity].to_i,
      tax: Product.find_by(id: params[:product_id]).tax * params[:quantity].to_i,
      total: Product.find_by(id: params[:product_id]).total * params[:quantity].to_i,

    )
    if @order.save
      render "show.json.jb"
    else
      render json: { message: "Problem" }
    end
  end
end
