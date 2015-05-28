Rails.application.routes.draw do


  devise_for :users
  # Routes for the Manufacturer resource:
  # CREATE
  get "/manufacturers/new", :controller => "manufacturers", :action => "new"
  post "/create_manufacturer", :controller => "manufacturers", :action => "create"

  # READ
  get "/manufacturers", :controller => "manufacturers", :action => "index"
  get "/manufacturers/:id", :controller => "manufacturers", :action => "show"

  # UPDATE
  get "/manufacturers/:id/edit", :controller => "manufacturers", :action => "edit"
  post "/update_manufacturer/:id", :controller => "manufacturers", :action => "update"

  # DELETE
  get "/delete_manufacturer/:id", :controller => "manufacturers", :action => "destroy"
  #------------------------------

  root "products#index"

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the Product resource:
  # CREATE
  get "/products/new", :controller => "products", :action => "new"
  post "/create_product", :controller => "products", :action => "create"

  # READ
  get "/products", :controller => "products", :action => "index"
  get "/products/:id", :controller => "products", :action => "show"

  # UPDATE
  get "/products/:id/edit", :controller => "products", :action => "edit"
  post "/update_product/:id", :controller => "products", :action => "update"

  # DELETE
  get "/delete_product/:id", :controller => "products", :action => "destroy"
  #------------------------------


  # Routes for the Food Group resource:
  # CREATE
  get "/food_groups/new", :controller => "food_groups", :action => "new"
  post "/create_food_group", :controller => "food_groups", :action => "create"

  # READ
  get "/food_groups", :controller => "food_groups", :action => "index"
  get "/food_groups/:id", :controller => "food_groups", :action => "show"

  # UPDATE
  get "/food_groups/:id/edit", :controller => "food_groups", :action => "edit"
  post "/update_food_group/:id", :controller => "food_groups", :action => "update"

  # DELETE
  get "/delete_food_group/:id", :controller => "food_groups", :action => "destroy"
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"

  # Favorite
  get "/create_favorite/:favoriteable_id/:favoriteable_type", :controller => "favorites", :action => "create"

  #------------------------------

end
