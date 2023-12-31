Rails.application.routes.draw do
  resources :articles
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  get 'pages/home'
  root "pages#home"

  get 'pages/about'
  #root 'pages#about'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login',to:  'sessions#create'
  get 'logout',to: 'sessions#destroy'
  
# namespace :admin do
#   resources :pages
# end

end
