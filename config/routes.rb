Rails.application.routes.draw do
  resources :images
  devise_for :users
  root "welcome#index"
  resources :payments, only: [:new, :create]
end
