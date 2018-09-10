Rails.application.routes.draw do

  root 'boards#index'

  resources :boards
  resources :lists
  resources :tasks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
