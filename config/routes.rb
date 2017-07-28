Rails.application.routes.draw do

  devise_for :users

  root 'items#index'

  get '/users/entrance', to: 'users#entrance', as: 'entrance'
  get '/users/address', to: 'users#address', as: 'address'

  resources :items, only: [:index, :create, :edit, :update, :delete]
  resources :users, only: [:create, :edit, :update, :delete]
end
