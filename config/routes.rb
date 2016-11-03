Rails.application.routes.draw do

  root to: 'list#add_items'

  resources :store_groceries
  resources :stores
  resources :groceries
  resources :items

  get 'add_items', to: 'list#add_items'
  get 'add_item/:grocery_id', to: 'list#add_item', as: 'add_item'
  get 'clear_items', to: 'items#clear_items', as: 'clear_items'

end
