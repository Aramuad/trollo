Rails.application.routes.draw do
<<<<<<< HEAD

  
=======
  
  root 'boards#index'

  resources :boards
  resources :lists
  resources :tasks
>>>>>>> modify routes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
