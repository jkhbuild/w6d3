Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:create, :destroy, :index, :show, :update] do
    resources :artworks, only: [:index]
    resources :comments, only: [:index]
  end
  resources :artworks, only: [:create, :destroy, :index, :show, :update] do
    resources :comments, only: [:index]
  end

  resources :artwork_shares, only: [:create, :destroy]

  resources :comments, only: [:create, :destroy]

  # resources :artwork_shares do
  #   resources :users, only: :index
  #   resources :artworks, only: :index
  # end

  # get 'users/:id', to: 'users#show' #, as: 'user'
  # get 'users/', to: 'users#index' #, as: 'user'
  # get 'users/new', to: 'users#new' #, as: 'user'
  # get 'users/:id/edit', to: 'users#edit' #, as: 'user'
  # post 'users/', to: 'users#create' #, as: 'user'
  # patch 'users/:id', to: 'users#update' #, as: 'user'
  # delete 'users/:id', to: 'users#destroy' #, as: 'user'
  # put 'users/:id', to: 'users#update' #, as: 'user'

end
