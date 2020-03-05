Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_products" => "products#all_products"
    get "/product_id" => "products#product_retrieve"
    get "/product_id/:id" => "products#product_retrieve"
  end
end
