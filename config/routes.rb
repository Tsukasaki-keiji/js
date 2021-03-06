Rails.application.routes.draw do
  resources :videos
  get 'posts/index'
  get 'posts/show'
  get 'users/index'
  get 'users/show'
  get 'welcome/index'

  resources :articles

  resources :comments


  resources :posts, only: [:index, :show, :create]
   resources :favorites, only: [:create, :destroy]

  root 'posts#index'

  root 'welcome#index'

  resources :users do
    collection do
      get 'search'
    end
  end

end
