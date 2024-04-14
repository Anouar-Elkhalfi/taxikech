Rails.application.routes.draw do
  # Page d'accueil
  root 'pages#home'

  # Routes pour les réservations de taxi
  resources :reservations, only: [:new, :create, :show]

  # Autres routes si nécessaire
end
