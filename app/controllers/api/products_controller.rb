class Api::ProductsController < ApplicationController
  def all_products
    @all_store_items = Product.all
    render "all_products.json.jb"
  end

  def product_id_1_method
    @product1 = Product.find_by(id: 1)
    render "product_id_1.json.jb"
  end

  def product_id_2_method
    @product2 = Product.find_by(id: 2)
    render "product_id_2.json.jb"
  end

  def product_id_3_method
    @product3 = Product.find_by(id: 3)
    render "product_id_3.json.jb"
  end

  def product_id_4_method
    @product4 = Product.find_by(id: 4)
    render "product_id_4.json.jb"
  end

  def product_id_5_method
    @product5 = Product.find_by(id: 5)
    render "product_id_5.json.jb"
  end
end
