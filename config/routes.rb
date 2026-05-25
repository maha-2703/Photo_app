Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
  resources :payments, only: [:new, :create]
end
