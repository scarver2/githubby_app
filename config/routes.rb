Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'home#index'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'sessions#failure'
  get 'log', to: 'home#log', as: :log
  get 'logout', to: 'sessions#destroy', as: :logout
  get 'search', to: 'search#index', as: :search
  get 'repos', to: 'repos#index', as: :repos
end
