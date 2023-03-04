Rails.application.routes.draw do
  resources :profiles
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"

  # get "/dashboard" to:"dashboard#index"
  # get "/profile"   to:"profile#index"
end
