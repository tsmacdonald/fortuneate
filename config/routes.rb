Fortuneate::Application.routes.draw do
  resources :collections

  root to: 'collections#index'
end
