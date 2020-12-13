Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users' => 'users#show'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/allusers' => 'users#all'



  resources :users, only: [:new, :create, :show]


end
