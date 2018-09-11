
<<<<<<< HEAD
  Rails.application.routes.draw do
  
    root 'boards#index'
  
    get 'tasks/index'
    get 'tasks/show'
    get 'tasks/new'
  
    get 'boards/index'
    get 'boards/show'
    get 'boards/new'

    get 'lists/index'
    get 'lists/show'
    get 'lists/new'
=======
Rails.application.routes.draw do
  
  root 'boards#index'
>>>>>>> 003fd62eebb452fc639d8763e787d5a9486a2222

  resources :boards
  resources :lists
  resources :tasks
<<<<<<< HEAD


=======
>>>>>>> 003fd62eebb452fc639d8763e787d5a9486a2222
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
