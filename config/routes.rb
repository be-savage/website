Rails.application.routes.draw do

  devise_for :users
  root to: 'orders#new'

  # Orders
  resources :orders

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
