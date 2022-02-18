Rails.application.routes.draw do
  get 'comments/new'
  post 'comments/create'
  get 'comments/destroy'
  get 'login', to: 'session#login'
  post 'session/create'
  get 'logout', to: 'session#logout'
  resources :posts
  resources :users
  root 'posts#index'
end
