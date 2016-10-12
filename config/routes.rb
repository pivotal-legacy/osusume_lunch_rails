Rails.application.routes.draw do
  resources :restaurants
  resources :recommendations, only: [:create]
end
