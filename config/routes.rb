Rails.application.routes.draw do
  route 'items#index'
  resources :items, only: [:index, :create, :edit, :update, :delete]
end
