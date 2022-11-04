Rails.application.routes.draw do
  resources :bookmanages
  root 'home#index'
  get 'home/post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
