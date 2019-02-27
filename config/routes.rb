Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "phrases#index"

  resources :phrases
  resources :users

  # delete 'phrases/:id', to: 'phrases#destroy'
end
