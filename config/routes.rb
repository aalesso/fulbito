Rails.application.routes.draw do
  devise_for :owners_establishments
  # Routes for the Owners_establishment resource:
  # READ
  get "/owners_establishments", :controller => "owners_establishments", :action => "index"
  get "/owners_establishments/:id", :controller => "owners_establishments", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
