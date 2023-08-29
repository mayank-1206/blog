Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  #root 'product#index'
  root 'sample#index'
  #get resources :products 
  #get "products" ,to: "products#index"
  resources :articles do 
    resources :comments
  end
end
