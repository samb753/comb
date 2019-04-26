Rails.application.routes.draw do

  root to: "pages#home"
  devise_for :users

  resources :phrases
  get 'phrase/random', to: 'phrases#random'
  get '*path', to: 'phrase#index' unless Rails.env.development?

  resources :users
  get 'users/:user_id', to: 'users#show'
end
