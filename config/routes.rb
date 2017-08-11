Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }


  root 'items#index'

  get '/users/entrance', to: 'users#entrance', as: 'entrance'

  resources :items, only: [:index, :new, :create, :edit, :update, :delete]

  resources :users, only: [:create, :edit, :update, :delete, :show]  do
    get 'address'
    patch 'address_create'
    get 'credit'
    patch 'credit_create'
    get 'complete'
    get 'mylist'
  end
end
