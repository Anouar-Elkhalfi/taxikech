Rails.application.routes.draw do
  root 'reservations#new'
  resources :reservations, only: [:new, :create, :show]
end
