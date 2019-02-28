Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "phrases#index"

  resources :phrases
  get 'phrase/random', to: 'phrases#random'

  resources :users

  # delete 'phrases/:id', to: 'phrases#destroy'
end
