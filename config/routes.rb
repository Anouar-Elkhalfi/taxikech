Rails.application.routes.draw do
  # Redirect root to the new action of ReservationsController
  root 'reservations#new'
end

