Rails.application.routes.draw do
  resources :carts
  resources :deliveries
  root to: 'products#index'  
  devise_for :users
  resources :tags,except: :show
  resources :books
  resources :users
  resources :products do
    post 'add_to_cart', on: :member
  end
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
