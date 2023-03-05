Rails.application.routes.draw do
  resources :search_bars
  devise_for :users

  resources :profiles
  resources :posts

  get "/dashboard", to: "dashboard#index"
  get "/profile", to: "profile#index"

  root to: "home#index"
end
