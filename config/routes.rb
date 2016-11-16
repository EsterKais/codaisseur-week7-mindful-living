Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/home'
  root 'pages#home'

  resources :retreats
  resources :books
  resources :courses

  resources :profiles
  resources :profilephotos #could be profile_photos

  resources :friendships, only: [:create, :destroy]
  resources :recommendations, only: [:new, :create, :destroy]

  resources :conversations do
    resources :messages
  end
end
