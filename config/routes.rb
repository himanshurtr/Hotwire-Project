Rails.application.routes.draw do

  root "user_alls#index"
  resources :user_alls
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"   
end
