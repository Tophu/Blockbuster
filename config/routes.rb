Rails.application.routes.draw do
  get "order/index"
  get "order/show"
  get "order/new"
  post "order/create"
  get "order/edit"
  get "order/destroy"
  get "orders/reviews"
  get "orders/movies"
  get 'movies/index'
  get 'movies/show'

  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
