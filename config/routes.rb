Rails.application.routes.draw do
  get "orders/index"
  get "orders/show"
  get "orders/new"
  get "orders/edit"
  get "orders/destroy"
  get "order/index"
  get "order/show"
  get "order/new"
  get "order/edit"
  get "order/destroy"
  get "order/index"
  get "order/show"
  get "order/new"
  get "order/edit"
  get "orders/reviews"
  get "orders/movies"

  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
