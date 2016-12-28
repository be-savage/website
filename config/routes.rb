Rails.application.routes.draw do

  # Orders
  resources :orders

  # Stands
  resources :stands

  # Places
  resources :places
end
