Rails.application.routes.draw do
  
  root 'boards#index'

  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'

  get 'boards/index'
  get 'boards/show'
  get 'boards/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
