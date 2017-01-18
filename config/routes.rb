Rails.application.routes.draw do

  devise_for :users
  root to: 'orders#index'

  # Orders
  resources :orders

  # Stands
  resources :stands

  # Places
  resources :places
end
