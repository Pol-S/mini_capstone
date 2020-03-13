class Api::ProductsController < ApplicationController
  def index
    @all_store_items = Product.all

    if params[:search]
      @all_store_items = Product.where("name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @all_store_items = Product.where("price < 15")
    end

    if params[:sort]
      if params[:sort_order]
        @all_store_items = @all_store_items.order(params[:sort] => params[:sort_order])
      end
    else
      @all_store_items = @all_store_items.order(:id)
    end

    render "index.json.jb"
  end

  def create
    @product = Product.new({
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
    })

    if @product.save
      Image.create({ url: params[:image_url], product_id: @product.id })
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def product_retrieve
    id = params["id"]
    @product = Product.find_by(id: id)
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price

    Image.create ({ url: params[:image_url], product_id: params[:id] })
    @product.description = params[:description] || @product.description
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product successfully deleted" }
  end
end
