Rails.application.routes.draw do

<<<<<<< HEAD
  # get "movies", to: "movies#index", as: "movies"
  # get "movies/:id", to: "movies#show", as: "movie", id: /\d+/ #only numeric digits
  # get "movies/new", to: "movies#new", as: "new_movie"
  # get "movies/create"
  resources :movies
  resources :orders

  get "baskets/:id" => "baskets#show", as: "basket"
  delete "baskets/:id" => "baskets#destroy"

  post "items/:id/add" => "items#add_quantity", as: "item_add"
  post "items/:id/reduce" => "items#reduce_quantity", as: "item_reduce"
  post "items" => "items#create"
  get "items/:id" => "items#show", as: "item"
  delete "items/:id" => "items#destroy"
=======
  get 'baskets/show'
  get 'baskets/create'
  get 'baskets/new'
  get 'payments/create'
  get "orders/index"
  get "orders/show"
  get "orders/new"
  get "orders/edit"
  get "orders/destroy"

  get "orders/reviews"
  get "orders/movies"
  get "movies/index"
  get "movies/show"
>>>>>>> master

  devise_for :users

  root to: "movies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
