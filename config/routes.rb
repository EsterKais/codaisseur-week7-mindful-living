Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/home'
  root 'pages#home'

  resources :retreats do
      collection do
        get :by_retreat_name
        get :by_latest
      end
  end

  resources :books do
      collection do
        get :by_book_name
        get :by_latest
      end
  end

  resources :courses do
      collection do
        get :by_course_name
        get :by_latest
      end
  end

  resources :profiles
  resources :profilephotos #could be profile_photos

  resources :friendships, only: [:create, :destroy]
  resources :recommendations, only: [:new, :create, :destroy]
end
