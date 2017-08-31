Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }


  root 'items#index'

  get '/users/entrance', to: 'users#entrance', as: 'entrance'

  resources :address, only: [:index, :new, :edit, :update]
  resources :credit, only: [:index, :new, :edit, :update]

  resources :items do
      get 'buy'
      get 'buy_page'
      get 'buy_done'
      get 'buy_done'
      post 'create_review'
  end

  resources :users, only: [:create, :edit, :update, :delete, :show]  do
    get 'complete'
    get 'my_list'
    get 'transaction_list'
    get 'sell_end_list'
    get 'open_trade'
    get 'trading_performance'
  end
end
