Rails.application.routes.draw do
  devise_for :users
  resources :albums, only: [:index, :show]
   # routes for the tracks controller
   resources :tracks, only: [:index, :show, :create, :update, :destroy]
    # routes for the artists controller
  resources :artists, only: [:index, :show, :create, :update, :destroy]


end
