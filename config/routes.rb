Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/create'
  get 'reservations/show'
  get 'pages/home'
  # Page d'accueil
  root 'pages#home'

  # Routes pour les réservations de taxi
  resources :reservations, only: [:new, :create, :show]

  # Autres routes si nécessaire
end
