Rails.application.routes.draw do

  root to: 'lp#index'

  resources :estimations, only: :index
  resources :addresses, only: [:index, :create]
end
