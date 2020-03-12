class Api::SuppliersController < ApplicationController
  def index
    @all_suppliers = Supplier.all
    render "index.json.jb"
  end
end
