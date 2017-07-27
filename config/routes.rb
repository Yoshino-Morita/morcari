Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items, only: [:index, :create, :edit, :update, :delete]
  resources :users, only: [:create, :edit, :update, :delete]
end
