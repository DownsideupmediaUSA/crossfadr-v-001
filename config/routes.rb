Rails.application.routes.draw do

  devise_for :users
  root to: 'mixes#index'

  resources :djs, only: [:show, :edit]

  resources :mixes, only: [:create, :destroy, :update, :index, :show]

  post 'mixes/:id/shared_mix', to: 'mixes#shared_mix'
  post 'mixes/:id/liked_mix', to: 'mixes#liked_mix'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
