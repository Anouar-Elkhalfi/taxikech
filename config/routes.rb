Rails.application.routes.draw do
  # Redirect root to the new action of ReservationsController
  root 'reservations#new'

  # Other routes...

  # Routes for taxi reservations
  resources :reservations, only: [:new, :create, :show]
end
