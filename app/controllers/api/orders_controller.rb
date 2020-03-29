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
    carted_products = current_user.carted_products.where(status: "carted")
    calc_subtotal = 0
    calc_tax = 0
    calc_total = 0

    carted_products.each do |carted_product|
      {
        calc_subtotal += carted_product.product.price
        calc_tax += carted_product.product.tax
      }
    end

    @order = Order.new(

      user_id: current_user.id,
      subtotal: 0,
      tax: 0,
      total: 0,

    )
    if @order.save
      render "show.json.jb"
    else
      render json: { message: "Problem" }
    end
  end
end
