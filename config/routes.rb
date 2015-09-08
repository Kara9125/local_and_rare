Rails.application.routes.draw do

  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/show'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/destory'

  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/show'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/destory'

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
  resources :artists, except: [:index]

  # reviews route
  resources :reviews, except: [:index]

  root "reviews#index"
end
