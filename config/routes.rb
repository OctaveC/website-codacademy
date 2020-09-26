Rails.application.routes.draw do
  root to: 'collections#index'

  resources :collections, only: [:index, :show, :new, :create] do
    resources :movies, only: [:create]
  end
  resources :movies, only: [:destroy]
end
