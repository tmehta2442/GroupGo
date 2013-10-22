Groupgoc::Application.routes.draw do
  root to: "entries#index"

  resources :entries
  resources :users
  resources :sessions

  # get "/search" => "entries#create"
	get "/logout" => "sessions#destroy"
  get "/:id" => "entries#show", as: "entry"

end
