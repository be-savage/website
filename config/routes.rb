Rails.application.routes.draw do

  devise_for :users
  root to: 'main#index'

  # Orders
  resources :orders
  get 'orders/:id/complete', to: 'orders#complete'

  # Stands
  resources :stands

  # Places
  resources :places

  # Users
  resources :users

  # Teams
  resources :teams

  # Challenges
  resources :challenges
end
