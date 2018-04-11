Rails.application.routes.draw do
  resources :neighborhoods
  resources :categories
  resources :cities
  resources :properties
  resources :photos
  resources :home, only: [:show, :index]

  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
