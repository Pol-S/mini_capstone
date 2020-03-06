Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products" => "products#index"
    #   get "/products" => "products#product_retrieve"
    #   get "/products/:id" => "products#product_retrieve"
  end
end
