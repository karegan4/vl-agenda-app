Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'


  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create', as: 'session'
  post '/session', to: 'sessions#destroy'

  resources :courses, only: [:index, :show, :new, :create, :edit, :update]
  patch 'courses/:id', to: 'courses#update'

  resources :assignments, only: [:index, :show, :new, :create, :edit, :update]
  patch 'assignments/:id', to: 'assignments#update'

  get '/error', to: 'users#error'
  get '/allusers', to: 'users#all'



  resources :users, only: [:new, :create, :show]


end
