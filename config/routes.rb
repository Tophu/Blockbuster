Rails.application.routes.draw do

  # get "movies", to: "movies#index", as: "movies"
  # get "movies/:id", to: "movies#show", as: "movie", id: /\d+/ #only numeric digits
  # get "movies/new", to: "movies#new", as: "new_movie"
  # get "movies/create"
  resources :movies
  resources :orders

  get "baskets/:id" => "baskets#show", as: "baskets"
  delete "baskets/:id" => "baskets#destroy"

  post "items/:id/add" => "items#add_quantity", as: "item_add"
  post "items/:id/reduce" => "items#reduce_quantity", as: "item_reduce"
  post "items" => "items#create"
  get "items/:id" => "items#show", as: "item"
  delete "items/:id" => "items#destroy"

  devise_for :users

  root to: "movies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
