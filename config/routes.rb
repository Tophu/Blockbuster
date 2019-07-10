Rails.application.routes.draw do
  get "orders/index"
  get "orders/show"
  get "orders/new"
  get "orders/edit"
  get "orders/destroy"
  get "orders/reviews"
  get "orders/movies"

  get "movies/index"
  get "movies/show"

  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
