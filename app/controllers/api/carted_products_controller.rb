class Api::CartedProductsController < ApplicationController
  def index
    @cartedproducts = current_user.carted_products.where(status: "carted")
    render "index.json.jb"
  end

  def create
    @cartedproduct = CartedProduct.new({
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted",
    })
    if @cartedproduct.save
      render "show.json.jb"
    else
      render "error saving product"
    end
  end
end
