Blog::Application.routes.draw do 
  resources :posts do 
    resources :comments
  end
  resources :sessions
  resources :users
  resources :products
end 
