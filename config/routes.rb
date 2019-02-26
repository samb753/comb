Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :phrases, only: [:create, :index, :show, :delete]
  resources :users

  # delete 'phrases/:id', to: 'phrases#destroy'
end
