Rails.application.routes.draw do
  resources :neighborhoods
  resources :categories
  resources :cities
  resources :states
  resources :properties
  resources :photos
  resources :home, only: [:show, :index]
  resources :messages 
  match "admin", to: "properties#index", via: :get
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
