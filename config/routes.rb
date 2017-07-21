Rails.application.routes.draw do
  root 'items#index'
  resources :items, only: [:index, :create, :edit, :update, :delete]
end
