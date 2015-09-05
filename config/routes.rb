Rails.application.routes.draw do

  # user routes
  get "/signup", to: "users#new" 
  get "/profile", to: "users#show"
  resources :users, only: [:create]

  # sessions routes
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  resources :sessions, only: [:create]

  # artists routes
  resources :artists, except: [:index]

  resources :reviews, except: [:index]

  root "artists#index"
end
