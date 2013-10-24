Groupgoc::Application.routes.draw do
  root to: "entries#index"

  resources :entries
  resources :users
  resources :sessions
  resources :groups
  resources :messages

  # get "/search" => "entries#create"
	get "/logout" => "sessions#destroy"
	get "/submit" => "entries#submit"
	get "/message" => "messages#submit"
	
  get "/entry/:id" => "entries#show", as: "entry"
# message board


end
