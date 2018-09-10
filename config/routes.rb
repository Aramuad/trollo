<<<<<<< HEAD
=======
Rails.application.routes.draw do
<<<<<<< HEAD
>>>>>>> d65f9ca076b9358619187694eff1eaf844aea0fc

  Rails.application.routes.draw do
  
<<<<<<< HEAD
    root 'boards#index'
  
    get 'tasks/index'
    get 'tasks/show'
    get 'tasks/new'
  
    get 'boards/index'
    get 'boards/show'
    get 'boards/new'
=======
<<<<<<< HEAD
  
=======
=======
  
  root 'boards#index'

  resources :boards
  resources :lists
  resources :tasks
>>>>>>> modify routes
>>>>>>> ab2a59529f316f8c1324ad889b4407e02fc36b7a
>>>>>>> d65f9ca076b9358619187694eff1eaf844aea0fc

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
