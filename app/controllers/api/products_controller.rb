class Api::ProductsController < ApplicationController
  def index
    @all_store_items = Product.all
    render "products_index.json.jb"
  end

  def product_retrieve
    id = params["id"]
    @product = Product.find_by(id: id)
    render "product_id.json.jb"
  end
end
