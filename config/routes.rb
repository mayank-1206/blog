Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/") 
  root 'products#index'
  resources :products
  #root 'books#index'
  #resources :books
  #root 'sample#index'
  #resources :articles do 
   # resources :comments
  #end
end
