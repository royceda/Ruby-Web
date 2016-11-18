Rails.application.routes.draw do

  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root 'controller#action'
  root 'pages#index'



  resources :posts #(creat routes for post)


  # classic declaration
  #get '/posts', to: 'posts#index'
  #get '/posts/:id', to: 'posts#show', as:'post'

end
