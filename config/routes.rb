Rails.application.routes.draw do
  # Routes for the Decision resource:
  # CREATE
  get "/decisions/new", :controller => "decisions", :action => "new"
  post "/create_decision", :controller => "decisions", :action => "create"

  # READ
  get "/decisions", :controller => "decisions", :action => "index"
  get "/decisions/:id", :controller => "decisions", :action => "show"

  # UPDATE
  get "/decisions/:id/edit", :controller => "decisions", :action => "edit"
  post "/update_decision/:id", :controller => "decisions", :action => "update"

  # DELETE
  get "/delete_decision/:id", :controller => "decisions", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end