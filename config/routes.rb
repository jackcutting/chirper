Rails.application.routes.draw do
  resources :chirps

  root 'chirps#index'
end
