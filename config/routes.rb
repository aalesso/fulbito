Rails.application.routes.draw do
  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Court resource:
  # CREATE
  get "/courts/new", :controller => "courts", :action => "new"
  post "/create_court", :controller => "courts", :action => "create"

  # READ
  get "/courts", :controller => "courts", :action => "index"
  get "/courts/:id", :controller => "courts", :action => "show"

  # UPDATE
  get "/courts/:id/edit", :controller => "courts", :action => "edit"
  post "/update_court/:id", :controller => "courts", :action => "update"

  # DELETE
  get "/delete_court/:id", :controller => "courts", :action => "destroy"
  #------------------------------

  devise_for :owners_establishments
  # Routes for the Owners_establishment resource:
  # READ
  get "/owners_establishments", :controller => "owners_establishments", :action => "index"
  get "/owners_establishments/:id", :controller => "owners_establishments", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
