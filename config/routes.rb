Rails.application.routes.draw do
  root to: 'home#index'
  resources :comments
  devise_for :games
  resources :games do
    resources :comments
  end
  patch "join", to: "games#join", as: :join
  get "/users/new", to: "users#new"
  post "users", to: "users#create"

  devise_for :users
  resources :users, :except => [:create]
end
