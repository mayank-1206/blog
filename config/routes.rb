Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  #root "product#index"
  #root 'sample#index'
  #g#et resources :products 
  #get "/product" ,to: "product#index" 
  #get "/product/:id", to: "product#show"
  root 'books#index'
  resources :books
  #resources :product
  #end
  #resources :articles do 
  #  resources :comments
  #end
end
