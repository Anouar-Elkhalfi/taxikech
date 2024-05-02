Rails.application.routes.draw do
  root 'reservations#new'
  resources :reservations, only: [:new, :create, :show]
  resources :drivers, only: [:show]  # Add this line
end
