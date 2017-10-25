Rails.application.routes.draw do
  get 'products/index'

  get 'products/show'

  resources :orders
  get 'product/new'

  devise_for :users
  resources :tags,except: :show
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
