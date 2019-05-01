Rails.application.routes.draw do
  # get 'users/new'
  root :to => 'posts#index'
  resources :posts
  get  '/signup',  to: 'users#new'
  resources :users
end
