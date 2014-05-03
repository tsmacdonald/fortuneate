Fortuneate::Application.routes.draw do
  devise_for :users
  resources :tunes

  resources :collections

  root to: 'collections#index'
end
