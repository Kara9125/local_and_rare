Rails.application.routes.draw do

  # user routes
  get "/signup", to: "users#new" 
  get "/profile", to: "users#show"
  resources :users, only: [:create]

  # sessions routes
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  resources :sessions, only: [:create]
  post "/sessions", to: "sessions#create"

  # artists route
  resources :artists do
    resources :reviews, except: [:index] 
  end
  

  root "artists#index"
end
