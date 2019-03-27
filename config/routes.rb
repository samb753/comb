Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :phrases
  get 'phrase/random', to: 'phrases#random'
  get '*path', to: 'phrase#index' unless Rails.env.development?

  resources :users
end
