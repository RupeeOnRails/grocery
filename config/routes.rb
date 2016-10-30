Rails.application.routes.draw do

  root to: 'items#index'

  resources :store_groceries
  resources :stores
  resources :groceries
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
