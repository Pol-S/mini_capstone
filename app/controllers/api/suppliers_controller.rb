class Api::SuppliersController < ApplicationController
  def index
    @all_suppliers = Supplier.all
    render "index.json.jb"
  end

  def supplier_retrieve
    @supplier = Supplier.find_by(id: params["id"])
    render "show.json.jb"
  end
end
