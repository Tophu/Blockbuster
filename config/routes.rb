Rails.application.routes.draw do
  get "movies", to: "movies#index", as: "movies"
  get "movies/:id", to: "movies#show", as: "movie"
  get "movies/new", to: "movies#new", as: "new"
  get "movies/create"
  devise_for :users
  root to: "movies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
