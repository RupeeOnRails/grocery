Rails.application.routes.draw do

  root to: 'groceries#index'

  resources :store_groceries

  resources :stores

  resources :groceries
  get 'add_search', to: 'groceries#add_search', as: 'add_search'
  get 'index_search', to: 'groceries#index_search', as: 'index_search'
  get 'search', to: 'groceries#search', as: 'search'

  resources :items
  get 'add_items', to: 'list#add_items'
  get 'add_item/:grocery_id', to: 'list#add_item', as: 'add_item'
  get 'clear_items', to: 'items#clear_items', as: 'clear_items'
  get 'list_search', to: 'items#list_search', as: 'list_search'
  get 'increment_item/:id', to: 'items#increment', as: 'increment_item'
  get 'decrement_item/:id', to: 'items#decrement', as: 'decrement_item'

end
