class Api::ProductsController < ApplicationController
  def all_products
    @all_store_items = Product.all
    render "all_products.json.jb"
  end
end
