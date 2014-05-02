Fortuneate::Application.routes.draw do
  resources :tunes

  resources :collections

  root to: 'collections#index'
end
