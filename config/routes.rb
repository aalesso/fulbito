Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "courts#index"
  # Routes for the Slot resource:
  # CREATE
  get "/slots/new", :controller => "slots", :action => "new"
  post "/create_slot", :controller => "slots", :action => "create"

  # READ
  get "/slots", :controller => "slots", :action => "index"
  get "/slots/:id", :controller => "slots", :action => "show"

  # UPDATE
  get "/slots/:id/edit", :controller => "slots", :action => "edit"
  post "/update_slot/:id", :controller => "slots", :action => "update"

  # DELETE
  get "/delete_slot/:id", :controller => "slots", :action => "destroy"
  #------------------------------

  # Routes for the Neighborhood resource:
  # CREATE
  get "/neighborhoods/new", :controller => "neighborhoods", :action => "new"
  post "/create_neighborhood", :controller => "neighborhoods", :action => "create"

  # READ
  get "/neighborhoods", :controller => "neighborhoods", :action => "index"
  get "/neighborhoods/:id", :controller => "neighborhoods", :action => "show"

  # UPDATE
  get "/neighborhoods/:id/edit", :controller => "neighborhoods", :action => "edit"
  post "/update_neighborhood/:id", :controller => "neighborhoods", :action => "update"

  # DELETE
  get "/delete_neighborhood/:id", :controller => "neighborhoods", :action => "destroy"
  #------------------------------

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
