Rails.application.routes.draw do
  root 'breweries#index'

  resources :ratings, only: [:index, :new, :create, :destroy]
  resources :beers
  resources :breweries
end