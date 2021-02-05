Rails.application.routes.draw do

  root to: 'lp#index'

  resources :estimations, only: :index
end
