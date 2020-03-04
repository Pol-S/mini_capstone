Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_products" => "products#all_products"
    get "/product_id_1" => "products#product_id_1_method"
    get "/product_id_2" => "products#product_id_2_method"
    get "/product_id_3" => "products#product_id_3_method"
    get "/product_id_4" => "products#product_id_4_method"
    get "/product_id_5" => "products#product_id_5_method"
  end
end
