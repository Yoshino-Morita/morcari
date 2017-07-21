Rails.application.routes.draw do
  resources :users, only: [:index, :create,:edit, :update, :delete]
  resources :items, only: [:index, :create, :edit, :update, :delete]
end
