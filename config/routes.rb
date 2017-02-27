Rails.application.routes.draw do
  root 'application#index'
  devise_for :users

  get 'api/comments', to: 'comments#api_index'
  get 'api/mixes', to: 'mixes#api_index'
  get 'api/mixes/:id', to: 'mixes#api_show'

  
  resources :djs, only: [:show, :edit]

  resources :mixes, only: [:create, :destroy, :update, :index, :show]

  post 'mixes/:id/shared_mix', to: 'mixes#shared_mix'
  post 'mixes/:id/liked_mix', to: 'mixes#liked_mix'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
