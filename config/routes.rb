Rails.application.routes.draw do
  resources :powers, only: [:index,:show]
  get 'powers/:id/edit', to: 'powers#edit', as: :edit_powers

  patch 'powers/:id', to: 'powers#update'

  resources :heroines, only: [:index,:show,:new,:create]  
end
# Prefix Verb URI Pattern             Controller#Action
# powers GET  /powers(.:format)       powers#index
#  power GET  /powers/:id(.:format)   powers#show
# heroines GET  /heroines(.:format)     heroines#index
#        POST /heroines(.:format)     heroines#create
# new_heroine GET  /heroines/new(.:format) heroines#new
# heroine GET  /heroines/:id(.:format) heroines#show
