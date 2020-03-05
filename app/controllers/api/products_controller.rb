class Api::ProductsController < ApplicationController
  def all_products
    @all_store_items = Product.all
    render "all_products.json.jb"
  end

  def product_retrieve
    id_number = params["id"]
    @product = Product.find_by(id: id_number)
    render "product_id_template.json.jb"
  end
end
