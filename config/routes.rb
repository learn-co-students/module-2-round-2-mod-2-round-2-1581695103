Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :create]
  # resources :heroines, only: [:index, :show]  
  resources :heroines
end
