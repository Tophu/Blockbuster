Rails.application.routes.draw do
<<<<<<< HEAD
  get 'baskets/show'
  get 'baskets/create'
  get 'baskets/new'
  get 'payments/create'
  get "orders/index"
  get "orders/show"
  get "orders/new"
  get "orders/edit"
  get "orders/destroy"
=======
  get "order/index"
  get "order/show"
  get "order/new"
  post "order/create"
  get "order/edit"
  get "order/destroy"
>>>>>>> 4cde0be1848774abf7b6548e12dddd8f702c7ca5
  get "orders/reviews"
  get "orders/movies"
  get "movies/index"
  get "movies/show"

  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
