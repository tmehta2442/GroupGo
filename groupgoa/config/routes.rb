Groupgoa::Application.routes.draw do

  root to: "users#index"
  get "/users", to: "users#index"
  get "/users/new", to: "users#new"
  get "/user/:id", to: "users#show"
  get "/users/:id/edit", to: "samples#edit"
  post "/users", to: "users#create"
end
