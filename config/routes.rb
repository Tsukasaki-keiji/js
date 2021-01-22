Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'users/index'
  get 'users/show'
  get 'welcome/index'

  resources :articles

  resources :comments



  resources :users, only: [:index, :show]
  resources :posts, only: [:index, :show, :create]
   resources :favorites, only: [:create, :destroy]

  root 'posts#index'

  root 'welcome#index'
end
