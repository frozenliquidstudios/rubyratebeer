Rails.application.routes.draw do

  resources :users
  resources :ratings, only: [:index, :new, :create, :destroy]
  resources :beers
  resources :breweries
  resource :session, :only => [:new, :create, :destroy]
  
  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'

  root 'breweries#index'
end