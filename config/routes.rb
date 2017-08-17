Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }


  root 'items#index'

  get '/users/entrance', to: 'users#entrance', as: 'entrance'

  resources :items
  resources :address, only: [:index, :new, :edit, :update]
  resources :credit, only: [:index, :new, :edit, :update]
  resources :users, only: [:create, :edit, :update, :delete, :show]  do
    get 'complete'
    get 'my_list'
    get 'transaction_list'
    get 'sell_end_list'
  end
  resources :buy,only: [:index] do
    get 'buy'
    get 'buylist'
  end
end
