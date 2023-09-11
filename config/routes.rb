Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/") 
  #root 'products#index'
  #resources :products
  root 'books#index'
  resources :books 
  #do
   # member do
    #  get 'show'
    #end
  #end
  #root 'sample#index'
  #resources :articles do 
   # resources :comments
  #end

  #root "sessions#home"
  #resources :users, only: [:new, :create, :edit, :update, :destroy]
  #get '/login', to: 'sessions#login'
  #post '/login', to: 'sessions#create'
  #post '/logout', to: 'sessions#destroy'
  #get '/logout', to: 'sessions#destroy'
end

