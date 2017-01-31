Rails.application.routes.draw do

  # Orders
  root 'main#index'

  # Orders
  resources :orders

  # Stands
  resources :stands

  # Places
  resources :places
end
