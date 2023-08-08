Rails.application.routes.draw do
  devise_for :users
  #devise_for :installs
  resources :glosses
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
