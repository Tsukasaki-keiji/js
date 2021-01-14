Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles

  resources :comments

  resources :favorites, only: [:create, :destroy]

  root 'welcome#index'
end
